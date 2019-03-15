// Dependencies
// =============================================================
const Combos = require("../models/combos.js");

const Ryu = require("../models/ryu.js");
const Sequelize = require('sequelize')
const Op = Sequelize.Op


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

    //route for getting normal moves to create a combo
    app.get("/api/ryu/create", function(req, res){
      Ryu.findAll({
        where: {
          onHit: {
            [Op.gte]: 3
          }
        }
      }).then(function(results){
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
      // `results` here would be the newly created combo
      console.log("Combo successfully created!")
      res.end();
    });
  });

  app.get("/api/ryu/combos", function(req,res){
    Combo.findAll({
      where: {
        character: "ryu"
      }
    }).then(function(results){
      console.log(results);
    });

});

};