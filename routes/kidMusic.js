var express = require('express');
var connect = require('../utills/sqlConnect');
var router = express.Router();
var config = require('../config');

router.get('/:id', (req, res) => {
  connect.query(`SELECT * FROM tbl_kidsmusic WHERE kidsmusic_id=${req.params.id}`, (err, result) => {
    if(err){
      throw err,
      console.log(err);
    }else{
      console.log(result);
      res.render("watch_kidmusic", {

        kidmusicData : result[0]

      });
    }
  });
});

module.exports = router;
