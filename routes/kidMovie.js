var express = require('express');
var router = express.Router();
var videoController = require('../controllers/videoAppController');

router.get('/kidsmovies/:id/:kidsmovies', videoController.one_kidmovie);

module.exports = router;
