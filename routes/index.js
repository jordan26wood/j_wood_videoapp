var express = require('express');
var router = express.Router();
var videoController = require('../controllers/videoAppController');

router.get('/', videoController.titles);

router.get('/parents', videoController.get_movies);

router.get('/kids', videoController.get_kidsmovies);

router.get('/watch/:id', videoController.one_movie);

router.get('/music/:id', videoController.one_music);

router.get('/kidsmoviedata/:id', videoController.one_kidsmovies);

router.get('/kidsmusicdata/:id', videoController.one_kidsmovies);

module.exports = router;
