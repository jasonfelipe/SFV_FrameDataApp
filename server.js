const mysql = require('mysql');
const express = require('express');
const path = require("path");

const app = express();
const PORT = 3000;


const Ryu = require('./js/ryudata.js')

app.use(express.urlencoded({ extended: true }));
app.use(express.json());



app.get("/api/ryu", function (req, res) {
    res.send(Ryu.data)
    
});


app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "public/page.html"));
});


app.listen(PORT, function () {
    console.log("App listening on PORT " + PORT);
    Ryu.readData();
});
