const express = require('express');
const connection = require("../config/config");
const router = express.Router();

// Sampling data
router.post('/sampling_data', (req, res) => {
    var sql = `insert into samplingdata(userId,weatherCondition, sampling_date_created, muni_id)
    values(?,?,?,?)`
    var bodyParams = [req.body.userId, req.body.weatherCondition, new Date(), req.body.muni_id]

    connection.query(sql, bodyParams, (err, result) => {
        if (err) throw err;

        if (result.affectedRows != 0) {
            console.log(result.insertId)
            var insertedId = result.insertId
            res.send({ success: true, message: "sampling data recoded...", insertedId })
            console.log({ success: true, message: "sampling data recoded...", insertedId })
        }
        else {
            res.send({ success: false, message: "unable to record sampling data..." })
        }
    })
})

// Watersource
router.post("/watersource", (req, res) => {
    var watersourceSql = `insert into watersource(type,waterAccessability, samplingId)
    values(?,?,?)`
    var watersourceBody = [req.body.type, req.body.waterAccessability, req.body.samplingId]
    connection.query(watersourceSql, watersourceBody, (err, rows) => {
        if (err) throw err
        console.log("watersource", rows)
        res.send({ message: "adedd watersource", rows })
    })
})

// Coordinates
router.post("/coordinates", (req, res) => {
    var coordinateSql = `insert into coordinate(longitude,latitude, samplingId)
    values(?,?,?)`
    var coordinateBody = [req.body.longitude, req.body.latitude, req.body.samplingId]
    connection.query(coordinateSql, coordinateBody, (err, rows) => {
        if (err) throw err
        res.send({ message: "adedd coordinates", rows })
    })
})

// hydrogensulfide (H2S)
router.post("/hydrogensulfide", (req, res) => {
    var risk_type = ""
    if (req.body.status == false) { risk_type = "Negative (No Risk)" }
    else { risk_type = "positive (Risk)" }
    var h2sSql = `insert into hydrogensulfide(status,risk_type, samplingId)
            values(?,?,?);`
    var h2sBody = [req.body.status, risk_type, req.body.samplingId]
    connection.query(h2sSql, h2sBody, (err, rows) => {
        if (err) throw err
        var status = req.body.status
        res.send({ message: "adedd hydrogensulfide", status, risk_type, success: true })
    })
})

// Sanitary Inspection Survey
router.post('/sanitary_inspection_survey', (req, res) => {
    var total_avarage = 0
    var totalYes = 0
    var risk_type = ""
    if (req.body.pitLatrine == true) { total_avarage = total_avarage + 1 }
    if (req.body.domesticAnimal == true) { total_avarage = total_avarage + 1 }
    if (req.body.diaperDisposal == true) { total_avarage = total_avarage + 1 }
    if (req.body.wasteWaterRelease == true) { total_avarage = total_avarage + 1 }
    if (req.body.openDefaction == true) { total_avarage = total_avarage + 1 }
    if (req.body.unprotectedWaterSource == true) { total_avarage = total_avarage + 1 }
    if (req.body.agriculturalActivity == true) { total_avarage = total_avarage + 1 }
    if (req.body.observerLaundryActivity == true) { total_avarage = total_avarage + 1 }
    totalYes = total_avarage
    total_avarage = (total_avarage / 8) * 100

    if (total_avarage < 26) { risk_type = "low risk" }
    else if (total_avarage > 25 && total_avarage < 51) { risk_type = "medium risk" }
    else if (total_avarage > 50 && total_avarage < 76) { risk_type = "high risk" }
    else { risk_type = "very high risk" }

    var sql = `insert into sanitaryinpectionquestion(pitLatrine,domesticAnimal,diaperDisposal,wasteWaterRelease,openDefaction,
        unprotectedWaterSource,agriculturalActivity,observerLaundryActivity,samplingId,risk_type,totalYes,total_avarage)
        VALUES(?,?,?,?,?,?,?,?,?,?,?,?)`
    var sanitaryRequests = [req.body.pitLatrine, req.body.domesticAnimal, req.body.diaperDisposal, req.body.wasteWaterRelease,
    req.body.openDefaction, req.body.unprotectedWaterSource, req.body.agriculturalActivity, req.body.observerLaundryActivity,
    req.body.samplingId, risk_type, totalYes, total_avarage]
    connection.query(sql, sanitaryRequests, (err, results) => {
        if (err) throw err
        if (results.affectedRows != 0) {
            res.send({ message: "adedd sanitary survey", total_avarage, risk_type, success: true })
        }
        else {
            res.send({ message: "unable to add sanitary to database", success: false })

        }
    });
})

//
router.get('/get_provinces', (req, res) => {
    var sql = "select * from province";
    connection.query(sql, (err, results) => {
        if (err) throw err

        res.send({ success: true, results })
    })
})

// Get the municipalities
router.get('/get_municipalities/:id', (req, res) => {
    var sql = "select * from municipality where province_id = ?";
    connection.query(sql, req.params.id, (err, results) => {
        if (err) throw err

        res.send({ success: true, results })
    })
})

router.post('/get_monthly_reports', (req, res) => {

    var get_monthly_reports_body = [req.body.date, req.body.province_id]
    var sql = `select type, risk_type, total_avarage, muni_name,totalYes
    from samplingdata sam, watersource wat, municipality mun, sanitaryinpectionquestion san
    where sam.muni_id = mun.muni_id
    and sam.samplingId = wat.samplingId
    and sam.samplingId = san.samplingId
    and DATE_FORMAT(sampling_date_created, "%b/%Y") = ?
    and province_id = ?`
    connection.query(sql, get_monthly_reports_body, (err, results) => {
        if (err) throw err
        if (results.length > 0) {
            res.send({ success: true, results })
        }
        else {
            res.send({ success: false, message: "There are no report" })
        }
    })
})

router.get('/get_summary_report/:province_id/:date', (req, res) => {
    var sql = `select count(risk_type) as count_risk, risk_type
    from sanitaryinpectionquestion san, samplingdata sam, municipality mun
    where san.samplingId = sam.samplingId
    and sam.muni_id = mun.muni_id
    and province_id = ?
    and DATE_FORMAT(sampling_date_created, "%b-%Y") =  ?
    GROUP By risk_type;`
    var summary_params = [req.params.province_id, req.params.date]

    connection.query(sql, summary_params, (err, rows) => {
        if (rows.length > 0) {
            res.send({ rows, success: true })
        }
        else {
            res.send({ message: "No data found", success: false })
        }

    })

})

router.get('/get_all_summary_h2s', (req, res) => {
    var sql = `select status, DATE_FORMAT(sampling_date_created,'%d/%m/%Y') as sample_date, longitude, latitude, muni_name, type, sam.samplingId
    from hydrogensulfide hyd, samplingdata sam, coordinate coo, municipality mun, watersource wat
    where hyd.samplingId = sam.samplingId
    and sam.samplingId = coo.samplingId
    and mun.muni_id = sam.muni_id
    and sam.samplingId = wat.samplingId;`
    connection.query(sql, (err, rows) => {
        if (err) throw err;
        if (rows.length > 0) {
            res.send({ success: true, rows })
        }
        else {
            res.send({ message: "xannot find data", success: false })
        }
    })
})




module.exports = router