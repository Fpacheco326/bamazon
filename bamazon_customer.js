var express = require('express');
var app = express();

var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  database : 'bamazon_db'
});
 
connection.connect();

app.get('/products', function(req, res){
connection.query('SELECT * FROM products ',function (error, results, fields) {
if (error) res.send(error)
else res.json(results);

});
});

inquirer.prompt([
 
      {
        type: "list",
        message: "What is the ID of the product you would like to buy?",
        choices: ["1","2","3","4","5","6","7","8","9","10"],
        name: "product_name"
      },

      {
        type: "list",
        message: "How many would you like?",
        choices:["1","2","3","4","5","6","7","8","9","10"],
        name: "stock_quantity"
      }
    ])
    .then(function(inquirerResponse) {
      console.log(inquirerResponse.product_name)
      connection.query('SELECT * FROM products WHERE product_name = ?', [inquirerResponse.product_name],function (error, results, fields) {
        if (error) throw error;
        console.log(results);

      });
    });



app.listen(3001, function(){
	console.log('listening on port' + 3001);
});