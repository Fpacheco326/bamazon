var inquirer = require("inquirer");
var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'bamazon_db'
});

connection.connect(function (err) {
  if (err) throw err;

  prodSelect();
});


function prodSelect() {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;

    console.log('\n')
    console.log('id ' + 'Product Name ' + 'Department Name' + 'Price' + 'Stock Quantity')

    for (var i = 0; i < res.length; i++) {
      console.log(res[i].id + '   ' + res[i].product_name + '     ' + res[i].department_name + '    ' + res[i].price + '    ' + res[i].stock_quantity);
    }

    inquirerQuestions();
  });
}

function inquirerQuestions() {
  inquirer.prompt([
    {
      type: "input",
      message: "What is the ID of the product you would like to buy?",
      name: "item_id"
    },
    {
      type: "input",
      message: "How many would you like?",
      name: "stock_quantity",
      validate: function (value) {
        if (isNaN(value) === false && parseInt(value)) {
          return true;
        }
        return false;
      }
    }
  ])
    .then(function (inquirerResponse) {
      updateProduct(inquirerResponse);
    });

};

function updateProduct(inquirerResponse) {
  var selectedProductId = inquirerResponse.item_id;
  var selectedStock = inquirerResponse.stock_quantity;
  console.log("Updating product quantities...\n");

  connection.query('SELECT * FROM products WHERE id = ?', [selectedProductId], (err, res) => {
    if (err) throw err;

    if (res[0].stock_quantity > selectedStock) {
      var newStockQuantity = res[0].stock_quantity - selectedStock;
      var totalPrice = res[0].price * parseFloat(selectedStock);
      connection.query(
        'UPDATE products SET stock_quantity = ? WHERE id = ?', [newStockQuantity, selectedProductId], (err, res) => {
          if (err) throw err;
          console.log(`Stock Quantity Updated! Thank you for your purchase!\n Your total price is ${totalPrice}`);
        })
    } else {
      console.log("Insufficient quantity! Returning to Selection Page")
      prodSelect();
    }
  });
}
