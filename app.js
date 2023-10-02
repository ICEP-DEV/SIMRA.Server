require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const Connection = require('./config/config')
const session = require('express-session');
const cookieParser = require('cookie-parser');

const app = express();
app.use(cors(
    {"Access-Control-Allow-Origin": "*",
              "Access-Control-Allow-Credentials": "true",
        "Access-Control-Allow-Methods": "*",
        "Access-Control-Allow-Headers": "'Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token'"}
));
app.use(express.json());
app.use(bodyParser.json()); 

app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());


const oneDay =  1000*60*60*24;


app.use(session({
    secret:'thisismysecret_keysadhasdkjasdh.!5tstdfahsxsdjs&*79798981hgfv',
    resave: false,
    saveUninitialized: false,
    cookie: { maxAge: oneDay }
}));

app.use('/api', require('./routes/user'));
app.use('/api', require('./routes/level1'));
app.use('/api', require('./routes/updatePassword'));
app.use('/api', require('./routes/updateProfile'));

app.use('/', (req, res) =>{
    res.send('Endpoint')
});


app.listen(process.env.PORT, () => {
    console.log('Server started at port ' + process.env.PORT)
})