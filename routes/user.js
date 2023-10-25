const express = require('express');
const connection = require("../config/config");
const router = express.Router();
require("dotenv").config();
const jwt = require('jsonwebtoken');

router.post('/login', (req, res) => {
    var mobileNo = req.body.username
    var sql = `SELECT * FROM USER WHERE mobileNo =?`   //"0123456789"
    connection.query(sql, [mobileNo], (err, results) => {
        if (err) console(err)
        if (results.length > 0) {
            if (results[0].password == req.body.password) {
                Object.keys(results).forEach(function (key) {
                    var row = results[key];
                    const user = {
                        userId: row.userId, mobileNo: row.mobileNo,
                        firstname: row.firstname, lastname: row.lastname, password: row.password, level: row.level, role: row.role
                    }
                    const accessToken = jwt.sign(user, process.env.ACCESS_TOKEN_SECRET)

                    req.session.Users = {
                        "UserId": row.userId,
                        "mobileNo": row.mobileNo,
                        "firstname": row.firstname,
                        "lastame": row.lastname,
                        "password": row.password,
                        "level": row.level,
                        "role": row.role
                    }
                    console.log(req.session, user);
                    let users = req.session;

                    //code to display on postman
                    return res.status(200).json({ message: 'Successfully', success: true, results, users, token: accessToken });

                });
                // res.json({message:'Successfully', success:true, results})
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