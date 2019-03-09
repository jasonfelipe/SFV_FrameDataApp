// Dependencies
// =============================================================
const Combos = require("../models/combos.js");
const Ryu = require("../models/ryu.js");



// Routes
// =============================================================
module.exports = function (app) {

    // Get Ryu's Data
    app.get("/api/ryu", function (req, res) {

        // console.log(res);
        Ryu.findAll({}).then(function (results) {
            // results are available to us inside the .then
            res.json(results);
        });

    });

  // Add a combo specifically to Ryu
  app.post("/api/ryu/combos", function(req, res) {

    console.log("Combo Data:");
    console.log(req.body);

    Combo.create({
      character: "ryu",
      movelist: req.body.combocreator,
      damage: req.body.damage
    }).then(function(results) {
      // `results` here would be the newly created chirp
      res.end();
    });

  });

};