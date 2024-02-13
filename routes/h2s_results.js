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

router.get('/h2s_municipality/:province_id', (req, res) => {

    
})



module.exports = router