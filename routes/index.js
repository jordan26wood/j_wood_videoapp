var express = require('express');
var router = express.Router();
var config = require('../config');

router.get('/', function(req, res, next) {
  res.render('home', {
  title: 'Roku Movie App',
  message : "Welcome Back To Roku,",
  submessage : "Pick Your Profile",
  mainpage : true,
});
});

module.exports = router;
