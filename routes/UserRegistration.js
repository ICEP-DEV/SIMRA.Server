const express = require('express');
const connection = require("../config/config");
const router = express.Router();

router.post('/register', (req,res)=>{
    try {
        const { username, userSurname, email, userLevel, mobileNo, password } = req.body;
    
        // Create a new user
        const newUser = {username, userSurname, email, userLevel, mobileNo, password};

        /* const sql = `
      INSERT INTO users (username, userSurname, email, userLevel, mobileNo, password)
      VALUES (?, ?, ?, ?, ?, ?)
    `;

    db.query(sql, [username, userSurname, email, userLevel, mobileNo, password], (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).json({ message: 'Server error' });
      } else {
        res.status(201).json({ message: 'User registered successfully' });
      }
    }); */
    
        // Insert the new user into the database
        db.query('INSERT INTO users SET ?', newUser, (err, result) => {
          if (err) {
            console.error(err);
            res.status(500).json({ message: 'Server error' });
          } else {
            res.status(201).json({ message: 'User registered successfully' });
          }
        });
      } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Server error' });
      }
    });
 
module.exports = router
