const mysql = require('mysql');

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

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
});



const Ryu = {
    data: [],
    readData: function() {
        console.log("Retrieving Data....");
        connection.query(
            "SELECT * FROM ryu", function(err, res) {
                if (err) throw err;
                Ryu.data.push(res);
                // console.log("Checking", Ryu.data);
                // console.log("Back-end log", res);
                // console.log("Pushing Data to Array...");
          }
      )
  }
}

module.exports = Ryu