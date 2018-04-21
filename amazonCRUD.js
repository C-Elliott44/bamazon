var mysql = require("mysql");
var inquirer = require("inquirer");

var globalVariabe;

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
  
    user: "root",
  
    password: "root",
    database: "amazonDB"
  });

  connection.connect(function(err) {
    if (err) throw err;

    //start();
    showProducts();
  });


  function showProducts() {
        connection.query("SELECT * FROM products", function(err, results) {
          if (err) throw err;
          inquirer
      .prompt([
        {
          name: "choice",
          type: "list",
          choices: function() {
            var choiceArray = [];
            for (var i = 0; i < results.length; i++) {
              choiceArray.push(results[i].item);
            }
            return choiceArray;
          },
          message: "What product would you like to know more about?"
        },
      ]).then(function(answers) {
            showDescription(answers.choice);
            console.log(answers.choice)
          })
      })
      
  }

  function showDescription(choice) {
    connection.query("SELECT description, id, price, stock FROM products WHERE item=?", [choice], function(err, res){
      console.log("Description: " + res[0].description);
      console.log("Price: $" + res[0].price);
      console.log("Stock: " + res[0].stock);
      globalVariable = res[0].id;
      inquirer.prompt([
        {
            name: "buy",
            type: "list",
            choices: ["Yes", "No"],
            message: "Would you like to purchase this product?"
        }
      ]).then(function(buyOrNo){
        if (buyOrNo.buy === "No") {
          showProducts()
        } else {
          buyproduct()
        }
      })
    })

  }

  function buyproduct() {
    console.log(globalVariable)
    inquirer.prompt([
      {
        name: "amount",
        type: "input",
        message: "How many would you like to buy?"
      }
    ]).then(function(amount){
      console.log("Thank you for your purchase!!");
      connection.query("UPDATE products SET stock = stock - ? WHERE id=?", [amount, globalVariable], function(err, res){
      })
      
    })
  }