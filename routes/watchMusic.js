var express = require('express');
var router = express.Router();
var videoController = require('../controllers/videoAppController');



router.get('/movies/:id/:movies', videoController.one_movie);

router.get('/music/:id/:music', videoController.one_music);




module.exports = router;
