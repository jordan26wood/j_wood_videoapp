var express = require('express');
var router = express.Router();
var videoController = require('../controllers/videoAppController');

router.get('/', videoController.titles);

router.get('/parents', videoController.get_movies);

router.get('/kids', videoController.get_kidsmovies);

router.get('/watch/:id', videoController.one_movie);

router.get('/music/:id', videoController.one_music);
//
// router.get('/music/:id/:music', videoController.one_music);
//
// router.get('/kidsmovies/:id/:kidsmovies', videoController.one_kidmovies);
//
// router.get('/kidsmusic/:id/:kidsmusic', videoController.one_kidmovies);

module.exports = router;
