const express =require('express');
const bodyparser=require('body-parser');
const cors = require('cors');
const router = express.Router();
const app=express();
const connection = require("../config/config");
const multer = require('multer');
const path = require('path');
require('dotenv').config();


// Set up Multer to handle file uploads
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, 'uploads/'); // Specify the upload directory
    },
    filename: (req, file, cb) => {
      cb(null, Date.now() + path.extname(file.originalname)); // Use unique filenames
    },
  });
  
  const upload = multer({ storage: storage });

  // Serve static files from the 'uploads' directory
router.use('/uploads', express.static('uploads'));



router.post('/addEvents',upload.single('image'),(req, res)=>{
    const title = req.body.tile;
    const description=req.body.description;
    const date=req.body.date;
    const venue=req.body.venue;
    let imageUrl="";
    if (req.file) {
         imageUrl = `http://localhost:${process.env.PORT}/uploads/${req.file.filename}`;
         
      }else{
        return res.status(400).send('No file uploaded.');
      }
    
    //
    let sql=`INSERT INTO EVENTS(title,description,date,venue,imageURL)
    VALUES('${title}','${description}','${date}','${venue}','${imageUrl}')`
    
    connection.query(sql,(err, results)=>{
        if(err){
            return res.status(400).send("Failed to to add events!"+err);
        }
        else{
                return res.status(200).send("Events added succesfully");

            }
    });




})

module.exports = router;