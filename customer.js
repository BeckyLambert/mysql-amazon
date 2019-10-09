var mysql = require("mysql");
var inquirer = require("inquirer");
var colors = require('colors');
// var Table = require('cli-table');


// Connection script
var connection = mysql.createConnection({
    host: 'localhost',
    port: 8889,
    user: 'root',
    password: 'root',
    database: 'bamazon_DB'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log(colors.cyan(`You are now connected to the Bamazon Store database as id: ${connection.threadId}`))
});

function runProgram() {
    connection.query('SELECT * FROM products', function (err, res) {
        if (err) throw err;
        // Cli-Table display code with Color
        var table = new Table(
            {
                head: ['Product ID'.cyan.bold, 'Product Name'.cyan.bold, 'Department Name'.cyan.bold, 'Price'.cyan.bold, 'Quantity'.cyan.bold],
                colWidths: [12, 75, 20, 12, 12],
            });

        // Set/Style table headings and Loop through entire inventory
        for (var i = 0; i < res.length; i++) {
            table.push(
                [res[i].id, res[i].product, res[i].department, parseFloat(res[i].price).toFixed(2), res[i].quantity]
            );

        }
        console.log(table.toString());
        inquirer
            .prompt([
                {
                   type: 'number',
                   message: 'Please enter the product ID of the item that you would like to buy.'.yellow,
                   name: 'id'
                },
                {
                    type: 'number',
                    message: 'How many would you like to buy?'.yellow,
                    name: 'quantity'
                }
            ]).then(function)

    }
    )};
