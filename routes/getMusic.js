var express = require('express');
var connect = require('../utills/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM tbl_music', (err, result) => {
    if(err){
      throw err,
      console.log(err);
    }else{
      console.log(result);
      res.render('main_parents', {
        title : 'Parents Profile Page',
        message : "Welcome Back!",
        musicData : result,
      });
    }
  });

});

module.exports = router;
