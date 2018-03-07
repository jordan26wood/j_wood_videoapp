var express = require('express');
var router = express.Router();
var config = require('../config');

//do some checking here => check the default user profile
// tenary statment => MDN ternary

var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
  title: 'Roku Movie App',
  message : "Enjoy Movies From The Past",
  mainpage : true,
  kidsmode : config.kidsmode
});
});

module.exports = router;
