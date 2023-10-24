const express = require('express');
const connection = require("../config/config");
const router = express.Router();


const calculateExponentialForCryptosporidium = (r, count) => {
    // Implement the exponential calculation for Cryptosporidium parvum

    const calculatedResult = 1 - Math.pow(2.71828, -r * count);
    return calculatedResult;
};

const calculateExponentialForGiardia = (k, count) => {
    // Implement the exponential calculation for Giardia lambia 
    const calculatedResult = 1 - Math.pow(2.71828, -k * count);
    return calculatedResult;
};

function calculateBetaPoisson(alpha, beta, count) {
    // Perform the Beta-Poisson calculation here
    const calculatedResult = (1 - (1 + (count / beta)) ** - alpha);
    // console.log(calculatedResult)
    return calculatedResult;
};

const calculateEntamoebaColi = (alpha, nFifty, count) => {
    // Perform the Entamoeba Coli calculation here
    const calculatedResult = 1 - (1 + (count / nFifty) * (Math.pow(2, (1 / alpha)) - 1));
    return calculatedResult;
};

const calculateProbabiltyInfection = (probInfect, numofExposure) => {
    // Perform the calculation for Pi here
    const calculatedResult = 1 - Math.pow((1 - probInfect), -numofExposure);
    if (calculatedResult <= 0) {
        //No feacal contamination
    } else if (calculatedResult >= 1) {
        //action plan 
    }
    return calculatedResult;
};

router.post('/qmra', (req, res) => {

    let organism = req.body.organism;
    let fib = req.body.fib;
    let n50 = req.body.n50;
    let constant = req.body.constant;
    let alpha = req.body.alpha;
    let beta = req.body.beta;
    let totalQmra = 0

    switch (organism.toLocaleLowerCase()) {
        case 'Campylobacter jejuni'.toLocaleLowerCase():
            totalQmra = calculateBetaPoisson(alpha, beta, fib)
            break;
        case 'E.coli 0157:H7'.toLocaleLowerCase():
            totalQmra = calculateBetaPoisson(alpha, beta, fib)
            break;
        case 'Salmonella typhi'.toLocaleLowerCase():
            totalQmra = calculateBetaPoisson(alpha, beta, fib)
            break;
        case 'S.Flexneri'.toLocaleLowerCase():
            totalQmra = calculateBetaPoisson(alpha, beta, fib)
            break;
        case 'Vibrio Cholera'.toLocaleLowerCase():
            totalQmra = calculateBetaPoisson(alpha, beta, fib)
            break;
        case 'Entamoeba coli'.toLocaleLowerCase():
            totalQmra = calculateEntamoebaColi(alpha, n50, fib)
            break;
        case 'Giardia lambia'.toLocaleLowerCase():
            totalQmra = calculateExponentialForGiardia(constant, fib)
            break;
    }

    var date = new Date()
    var durationType = req.body.durationType;
    var probability = (1 - (1 - totalQmra)) ** (-durationType)
    var samplingId = req.body.durationType
    var qmraBody = [totalQmra, date, samplingId]
    var sql = `INSERT INTO qmra(pi,dateCreated,samplingId)
            VALUES(?,?,?)`;
    connection.query(sql, qmraBody, (err, results) => {
        if (err) {
            return res.status(200).send("Failed to load data!" + err);
        }
        else {
            if (results.affectedRows > 0) {
                res.status(200).json({ totalQmra, probability, organism, success: true });
            }
            else {
                res.status(200).json({ success: false, message: "Something went wrong try again later" });
            }

        }
    });


})

router.get('/qmra_group_results', (req, res) => {
    var group_sql = `select *
    from qmra
    group by samplingId`

    connection.query(group_sql, (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
            res.send({ results, success: true })
        }
        else {
            res.send({ message: "No data found", success: false })
        }

    })
})

router.get('/qmra_results', (req, res) => {

    var select_all_sql = 'select * from qmra'

    connection.query(select_all_sql, (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
            res.send({ results, success: true })
        }
        else {
            res.send({ message: "No data found", success: false })
        }

    })

})

router.get('/qmra_group', (req, res)=>{
    var sql = 'select count(samplingId), samplingId count_per_sample from  qmra group by samplingId;'
    connection.query(sql, (err, results)=>{
        if(err) throw err;
        if(results.length > 0){
            res.send({success: true, results})
        }
        else{
            res.send({success:false, message:"cannot find data"})
        }
    })
})

router.get('/qmra_results', (req, res)=>{
    var sql = 'select * from  qmra '
    connection.query(sql, (err, results)=>{
        if(err) throw err;
        if(results.length > 0){
            res.send({success: true, results})
        }
        else{
            res.send({success:false, message:"cannot find data"})
        }
    })
})
module.exports = router
