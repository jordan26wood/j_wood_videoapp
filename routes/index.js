var express = require('express');
var router = express.Router();
var config = require('../config');

//do some checking here => check the default user profile
// tenary statment => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';
router.get('/', function(req, res, next) {
  res.render(toRender, {
  title: 'Roku Movie App',
  message : "Welcome Back To Roku,",
  submessage : "Pick Your Profile",
  mainpage : true,
  kidsmode : config.kidsmode
});
});

module.exports = router;
