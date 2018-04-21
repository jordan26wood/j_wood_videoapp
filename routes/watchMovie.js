var express = require('express');
var connect = require('../utills/sqlConnect');
var router = express.Router();
var config = require('../config');


router.get('/movies/:id/:movies', videoController.one_movie);



module.exports = router;
