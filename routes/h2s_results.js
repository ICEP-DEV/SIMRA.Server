const express = require('express');
const connection = require("../config/config");
const router = express.Router();

router.get('/h2s_province', (req, res) => {
    var sql = `SELECT prov.province_id, COUNT(mun.province_id) as muni_count, province_name
                FROM hydrogensulfide hyd, samplingdata sam, municipality mun, province prov
                where hyd.samplingId = sam.samplingId
                and mun.muni_id = sam.muni_id
                and prov.province_id = mun.province_id
                group by  mun.province_id;`

    connection.query(sql, (err, results) => {
        if (err) console.log(err)
        if (results.length > 0) {
            res.send({ success: true, results })
        }
        else {
            res.send({ success: false, message: "could not found the results" })
        }
    })
});

router.get('/h2s_municipality/:province_id', (req, res) => {
    var sql = `SELECT COUNT(status) as count_risk, mun.muni_id, muni_name
                FROM hydrogensulfide hyd, samplingdata sam, municipality mun
                where hyd.samplingId = sam.samplingId
                and mun.muni_id = sam.muni_id
                and mun.province_id = ?
                group by mun.muni_id;`

    connection.query(sql, req.params.province_id, (err, results) => {
        if (err) console.log(err)
        if (results.length > 0) {
            res.send({ success: true, results })
        }
        else {
            res.send({ success: false, message: "could not found the results" })
        }
    })
});

router.get('/h2s_risk_results/:muni_id', (req, res) => {

    var sql = `SELECT COUNT(status) as count_risk, status, risk_type, muni_id
                FROM hydrogensulfide hyd, samplingdata sam
                where hyd.samplingId = sam.samplingId
                and muni_id = ?
                group by status, muni_id;`

    connection.query(sql, req.params.muni_id, (err, results) => {
        if (err) console.log(err)
        if (results.length > 0) {
            res.send({ success: true, results })
        }
        else {
            res.send({ success: false, message: "could not found the results" })
        }
    })
})

//get all infor by ID
router.get('/get_user_h2s_stats_visual_byId/:id', (req, res) => {
    var userId = req.params.id
    const dateParams = [userId]
    var sql = `select risk_type, status, count(status) count_status
    from samplingdata sam, hydrogensulfide hyd
    WHERE sam.samplingId = hyd.samplingId
    and userId = ?
    GROUP by status`
    connection.query(sql, dateParams, (err, result) => {
        if (err) { throw err }
        if (result.length > 0) {
            var isRisk = false;
            var isNotRisk = false;
            var resultObj = {}
            var results = []
            var color = []
            var status = []
            var risk_type = []
            var risk_count = []

            for (var k = 0; k < result.length; k++) {
                if (Number(result[k].status) === 0) {
                    isNotRisk = true;                    
                    color.push('white')
                    status.push(0)
                    risk_type.push(result[k].risk_type)
                    risk_count.push(result[k].count_status)
                }
                else {
                    isRisk = true;
                    color.push('black')
                    status.push(1)
                    risk_type.push(result[k].risk_type)
                    risk_count.push(result[k].count_status)

                }
                console.log(Number(result[k].status), 0)
                results.push(resultObj)
            }

            if (isRisk === false) {
                color.push('black')
                status.push(1)
                risk_type.push('Risk')
                risk_count.push(0)
            }
            if (isNotRisk === false) {
                color.push('white')
                status.push(0)
                risk_type.push('No Risk')
                risk_count.push(0)

            }

            res.send({ success: true, color, status, risk_type, risk_count })
        }
        else {
            res.send({ success: false, message: "no history data" })
        }
    })
})

// sleceted by ID dates 
router.get('/get_user_h2s_stats_visual/:start/:end/:id', (req, res) => {
    var startDate = req.params.start
    var endDate = req.params.end
    var userId = req.params.id
    const dateParams = [userId, startDate, endDate]
    var sql = `select risk_type, status, count(status) count_status
    from samplingdata sam, hydrogensulfide hyd
    WHERE sam.samplingId = hyd.samplingId
    and userId = ?
    and DATE_FORMAT(sampling_date_created, "%Y-%m-%d") BETWEEN ? AND ?
    GROUP by status`
    connection.query(sql, dateParams, (err, result) => {
        if (err) { throw err }
        if (result.length > 0) {
            var isRisk = false;
            var isNotRisk = false;
            var resultObj = {}
            var results = []
            var color = []
            var status = []
            var risk_type = []
            var risk_count = []

            for (var k = 0; k < result.length; k++) {
                if (Number(result[k].status) === 0) {
                    isNotRisk = true;                    
                    color.push('white')
                    status.push(0)
                    risk_type.push(result[k].risk_type)
                    risk_count.push(result[k].count_status)
                    /* resultObj.color = 'white'
                     resultObj.risk_type = result[k].risk_type
                     resultObj.status = result[k].status
                     resultObj.count_status = result[k].count_status*/
                }
                else {
                    isRisk = true;
                    color.push('black')
                    status.push(1)
                    risk_type.push(result[k].risk_type)
                    risk_count.push(result[k].count_status)

                }
                console.log(Number(result[k].status), 0)
                results.push(resultObj)
            }

            if (isRisk === false) {
                color.push('black')
                status.push(1)
                risk_type.push('Risk')
                risk_count.push(0)
            }
            if (isNotRisk === false) {
                color.push('white')
                status.push(0)
                risk_type.push('No Risk')
                risk_count.push(0)

            }

            res.send({ success: true, color, status, risk_type, risk_count })
        }
        else {
            res.send({ success: false, message: "no history data" })
        }
    })
})


module.exports = router