var mysql = require("mysql");
var inquirer = require("inquirer");
var colors = require('colors');


// Connection script
var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,
    user: "root",
    password: "root",
    database: "bamazon_DB"
});

connection.connect(function(err) {
    if(err) throw err;
    console.log(colors.cyan(`You are now connected to the Bamazon Store database as id: ${connection.threadId}`))
});