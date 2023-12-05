const express =require('express');
const bodyparser=require('body-parser');
const cors = require('cors');
const router = express.Router();
const app=express();
const jwt = require('jsonwebtoken');
const jwtMiddleware=require('./jwtMiddleware')
app.use(cors());
app.use(bodyparser.json());

const connection = require("../config/config");



router.put('/updateProfile',jwtMiddleware,(req, res)=>{
    const user = req.decoded;

    // const userPass = user.password;

    const id = user.userId
    if (id) {
        console.log(id);
        //instatiating user variables
   
     
       
        let firstname = req.body.user_firstname;
        let lastname =req.body.user_lastname;
        let mobileNo =req.body.user_mobileNo;
        let email=req.body.user_email;
       


        console.log(id)
        if(firstname!=undefined && lastname!=undefined && mobileNo!=undefined && email!=undefined){
            //retrieve the student if the student exists
           
            let sql = "UPDATE user SET firstname = ?,lastname=?,mobileNo=?,email=? where userId = ?";
            console.log(firstname,lastname,mobileNo,email);
            let data = [firstname,lastname,mobileNo,email,id];


            
            connection.query(sql, data,(err, results)=>{
                if(err){
                    return res.status(200).send("Failed to load data!"+err);
                }
                else{
                        return res.status(200).send("Profile updated");

                    }
            });

       
        }else if(firstname===undefined||firstname===null||firstname===""&& lastname!=undefined&&mobileNo!=undefined&&email!=undefined){
            firstname =user.firstname;
            let sql = "UPDATE user SET firstname = ?,lastname=?,mobileNo=?,email=? where userId = ?";
            console.log(firstname);
            let data = [firstname,lastname,mobileNo,email,id];


            
            connection.query(sql, data,(err, results)=>{
                if(err){
                    return res.status(200).send("Failed to load data!"+err);
                }
                else{
                        return res.status(200).send("Profile updated");

                    }
            });

        }else if(lastname===undefined||lastname===""||lastname===null&& firstname!=undefined&&mobileNo!=undefined&&email!=undefined){
           lastname =user.lastname;


            let sql = "UPDATE user SET firstname = ?,lastname=?,mobileNo=?,email=? where userId = ?";
            console.log(lastname);
            let data = [firstname,lastname,mobileNo,email,id];


            
            connection.query(sql, data,(err, results)=>{
                if(err){
                    return res.status(200).send("Failed to load data!"+err);
                }
                else{
                        return res.status(200).send("Profile updated");

                    }
            });
            
        }else if(mobileNo===undefined||mobileNo===null||mobileNo===""&& lastname!=undefined&&firstname!=undefined&&email!=undefined){
           mobileNo =user.mobileNo;


            let sql = "UPDATE user SET firstname = ?,lastname=?,mobileNo=?,email=? where userId = ?";
            console.log(mobileNo);
            let data = [firstname,lastname,mobileNo,email,id];


            
            connection.query(sql, data,(err, results)=>{
                if(err){
                    return res.status(200).send("Failed to load data!"+err);
                }
                else{
                        return res.status(200).send("Profile updated");

                    }
            });
            
        }else if(email===undefined||email===null||email===""&& lastname!=undefined&&firstname!=undefined&&mobileNo!=undefined){
            email=user.email;
            let sql = "UPDATE user SET firstname = ?,lastname=?,mobileNo=?,email=? where userId = ?";
            console.log(mobileNo);
            let data = [firstname,lastname,mobileNo,email,id];


            
            connection.query(sql, data,(err, results)=>{
                if(err){
                    return res.status(200).send("Failed to load data!"+err);
                }
                else{
                        return res.status(200).send("Profile updated");

                    }
            });

        }

        else{
            return res.status(401).send("fields empty"); 
        }
        
    }else {
        res.status(500).send("sessions empty")
     }
});

module.exports = router;