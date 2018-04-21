var express = require('express');
var connect = require('../utills/sqlConnect');
var router = express.Router();
var config = require('../config');

    router.get('/kidsmusic/:id/:kidsmusic', videoController.one_kidmovie);

    module.exports = router;
