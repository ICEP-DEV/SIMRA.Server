const express = require('express');
const connection = require("../config/config");
const router = express.Router();
require("dotenv").config();
const jwt = require('jsonwebtoken');

router.post('/login', (req,res)=>{
    var mobileNo = req.body.username
    var sql = `SELECT * FROM USER WHERE mobileNo =?`   //"0123456789"
    connection.query(sql, [mobileNo],(err, results)=>{
        if(err) console(err)
        if(results.length > 0){
            if(results[0].password == req.body.password){
                Object.keys(results).forEach(function(key){
                    var row = results[key];
                    const user = { userId:row.userId, mobileNo:row.mobileNo ,
                     firstname: row.firstname, lastname: row.lastname,password:row.password,level: row.level,role: row.role}
                    const accessToken = jwt.sign(user, process.env.ACCESS_TOKEN_SECRET)
                   
                      
                      req.session.Users = {
                          "UserId": row.userId,
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
                res.json({message:'wrong username or password', success:false})
            }
        }
        else{
            res.json({message:'wrong username or password', success:false})
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


 

module.exports = router