const express = require('express');
//const connection = require('../config/config');
const pool = require("../config/config");
const router = express.Router();

router.post('/login', (req, res) => {

    var email = req.body.username
    var sql = `SELECT * FROM user WHERE email =?`
    pool.getConnection((err, connection)=>{
        console.log('connected as id',connection.threadId)
       connection.query(sql, [email], (err, results) => {
        if (err){ console.log(err)
            throw err;
        }
        if (results.length > 0) {
            if (results[0].password == req.body.password) {
                return res.status(200).json({ message: 'Successfully', success: true, results });

            }
            else {
                res.json({ message: 'wrong username or password', success: false })
            }
        }
        else {
            res.json({ message: 'wrong username or password', success: false })
        }
    })  
    })
   
})

router.post('/registration', (req, res) => {
    var email = req.body.email
    var isFound = false;
    var sql_check = "select * from user where email =?"
    connection.query(sql_check, email, (error, results) => {
        if (error) throw error;
        if (results.length > 0) {
            res.send({ success: false, message: "User already exist" })
        }
        else {
            var role = 'user'
            var sql_register = `insert into user(email, mobileNo, password, firstname, lastname, level, role)
            values(?, ?, ?, ?, ?, ?, ? )`
            var registerBody = [req.body.email, req.body.mobileNo, req.body.password, req.body.firstname, req.body.lastname,
            req.body.level, role]
            connection.query(sql_register, registerBody, (err, rows) => {
                if (err) throw err;
                console.log(rows)
                if (results.affectedRows != 0) {
                     res.send({ success: true, message: "Successfully added user" })
                }
                else {
                     res.send({ success: false, message: "Something went wronng try again later" })
                }
            })
        }
    })
})
 
module.exports = router