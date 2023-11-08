const express = require('express');
const connection = require("../config/config");
const router = express.Router();
require("dotenv").config();
const jwt = require('jsonwebtoken');

router.post('/login', (req,res)=>{
    var email = req.body.username
    var sql = `SELECT * FROM USER WHERE email =?`   //"0123456789"
    connection.query(sql, [email],(err, results)=>{
        if(err) console(err)
        if(results.length > 0){
            if(results[0].password == req.body.password){
                Object.keys(results).forEach(function(key){
                    var row = results[key];
                    const user = { userId:row.userId,email:row.email, mobileNo:row.mobileNo ,
                     firstname: row.firstname, lastname: row.lastname,password:row.password,level: row.level,role: row.role}
                    const accessToken = jwt.sign(user, process.env.ACCESS_TOKEN_SECRET)
                   
                      
                      req.session.Users = {
                          "UserId": row.userId,
                          "email":row.email,
                          "mobileNo": row.mobileNo,
                          "firstname": row.firstname,
                          "lastame": row.lastname,
                          "password":row.password,
                          "level": row.level,
                           "role": row.role
                      }

                      console.log(req.session,user);
                      let users= req.session ;
                      
                      //code to display on postman
                      return res.status(200).json({message:'Successfully', success:true,results,users ,token:accessToken});
             
                  }); 
                // res.json({message:'Successfully', success:true, results})
            }
            else{
                res.json({message:'wrong email or password', success:false})
            }
        }
        else{
            res.json({message:'wrong email or password', success:false})
        }
    } )
})

router.get('/logout',(req, res)=>{
    req.session.destroy(function(err){
       if(err){
        return res.status(400).send(err);
       }else{
        return res.status(200).send("logged out \n"+JSON.stringify(req.session));
       }
    });
});

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