const express = require('express');
const path = require("path");

const app = express();
const PORT = 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Static directory to be served
app.use(express.static("app/public"));

// Routes
require("./app/routes/api-routes.js")(app);
require("./app/routes/html-routes.js")(app);


app.listen(PORT, function () {
    console.log("App listening on PORT " + PORT);
});
