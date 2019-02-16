var Sequelize = require('sequelize');

//be sure to change this to connection. When connecting to Database
var sequelize = require('../config/connection.js');

var Ryu = sequelize.define("ryu", {
    move: Sequelize.STRING,
    startup: Sequelize.STRING,
    active: Sequelize.STRING,
    recovery: Sequelize.STRING,
    onHit: Sequelize.STRING,
    onBlock: Sequelize.STRING,
    damage: Sequelize.STRING,
    stun: Sequelize.STRING,
    attackType: Sequelize.STRING,
    cancels: Sequelize.STRING,
    
},
{
 freezeTableName: true,
 tableName: 'ryu',
 timestamps: false
})
;

Ryu.sync();

module.exports = Ryu;