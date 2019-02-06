const mysql = require('../node_modules/mysql');
const express = require('../node_modules/express');
const path = require("path");   

const app = express();
const PORT = 3000;

const data = []


// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());


var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "root",
    database: "SFV_FrameDataDB"
  });
  
  connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
  });

  function readData () {
      console.log("Retrieving Data....")
      connection.query(
          "SELECT * FROM ryu", function(err, res) {
              if (err) throw err;
            //   console.log("Back-end log", res);
            console.log("Pushing Data to Array...")
              data.push(res);
              connection.end();
          }
      )
  }

app.get("/api/ryu", function(req, res){
    res.send(data)
});
  

  app.get("/", function(req, res) {
    // res.send("Welcome to the Star Wars Page!")
    res.sendFile(path.join(__dirname, "../page.html"));
});


  app.listen(PORT, function() {
    console.log("App listening on PORT " + PORT);
    readData();
  });
  