var express = require('express');
var connect = require('../utills/sqlConnect');
var router = express.Router();
var config = require('../config');

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_kidsmovies', (err, result) => {
  connect.query('SELECT * FROM tbl_kidsmusic', (err, musresult) => {
    if(err){
      throw err,
      console.log(err);
    }else{
      console.log(result);
      res.render('main_kids', {
        title : 'Kids Profile Page',
        message : "Welcome Back!",
        movie : "Pick A Moive",
        music : "Pick An Album",
        movieData : result,
        musicData : musresult,
      });
    }
  });
});
});

module.exports = router;
