var mysql = require('mysql')
/*
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'simra_db'
});
*/
var connection = mysql.createConnection({
    host: 'simra.cwtgw4wh8ldi.eu-west-1.rds.amazonaws.com',
    user: 'admin',
    password: 'simra2023',
    database: 'simra',
    port: 3306,
    connectionLimit: 10,
    acquireTimeout: 100000
});

connection.connect((err) => {
    if (!err)
        console.log('Connection Established Successfully');
    else
        console.log('Connection Failed!' + JSON.stringify(err, undefined, 2));
});

module.exports = connection;