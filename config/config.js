var mysql = require('mysql')
/*
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'simra_db'
});

*/
/*
var connection = mysql.createConnection({
    host: 'simra-db.cwtgw4wh8ldi.eu-west-1.rds.amazonaws.com',
    user: 'admin',
    password: 'simra.tut.ac.za',
    database: 'simra_db',
    port: 3306
});
*/


/*
connection.connect((err) => {
    if (!err)
        console.log('Connection Established Successfully');
    else
        console.log('Connection Failed!' + JSON.stringify(err, undefined, 2));
});
*/

const connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'simra_db',
    connectionLimit:2000
})
connection.getConnection((err, con) => {
    if (err) 
    console.log('Connection Failed!' + JSON.stringify(err, undefined, 2));
    if(con.state === 'disconnected')
        console.log(`Database connection failed. Check that its running and that your configuration is correct`);
    else 
    console.log('Connection Established Successfully');
});
module.exports = connection;