// handle the routing requests => the request gets passed in via the route
const connect = require('../utills/sqlConnect');

exports.titles = (req, res) => {
  console.log('hit titles');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    // connect.query(query, (err, result) => {
    //   if (err) {
    //     return console.log(err.message);
    //   }

      // router.get('/', function(req, res, next) {
        res.render('home', {
        title: 'Roku Movie App',
        message : "Welcome Back To Roku,",
        submessage : "Pick Your Profile",
        mainpage : true,
        });
      });

    // })
  // })
};


exports.get_movies = (req, res) => {
  console.log('hit parents');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

      let query = `SELECT * FROM tbl_movies`;
      let querymus = `SELECT * FROM tbl_music`;

    connect.query(query, (err, result) => {
      if (err) {
        return console.log(err.message);
      }
      connect.query(querymus, (err, musresult) => {
        if (err) {
          return console.log(err.message);
        }

      console.log(result);
      res.render('main_parents', {
        title : 'Parents Profile Page',
        message : "Welcome Back!",
        movie : "Pick A Moive",
        music : "Pick An Album",
        movieData : result,
        musicData : musresult,
      });
    })
  })
  })
};



exports.get_kidsmovies = (req, res) => {
  console.log('hit KIDS movies');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

      let query = `SELECT * FROM tbl_kidsmovies`;
      let querymus = `SELECT * FROM tbl_kidsmusic`;

    connect.query(querymus, (err, musresult) => {
      connect.query(query, (err, result) => {
      if (err) {
        return console.log(err.message);
      }


      console.log(result);
      res.render('main_kids', {
        title : 'Kids Profile Page',
        message : "Welcome Back!",
        movie : "Pick A Moive",
        music : "Pick An Album",
        movieData : result,
        musicData : musresult,
      });
        });
    })
  })
};



exports.one_movie = (req, res) => {
  console.log("hit all movies");
  connect.getConnection((err, connection) => {
    if(err){
      return console.log(err.message);
    }
    let movquery = `SELECT * FROM tbl_movies WHERE movies_id=${req.params.id}`;
    let query = `SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`;
  console.log(req.params.id, req.params.movie);
  connect.query(query, (error, commentrows) => {
    connect.query(movquery, (error, rows) => {
    connection.release();
    if (error){
      console.log(error);
    }
    console.log(rows);
    res.render('watch_movies', {
      movie : req.params.id,
      watchData : rows[0],
      data : JSON.stringify(commentrows),
      mainpage : false,
      videopage : true
    });
      });
  });
});
};

exports.one_kidsmovies = (req, res) => {
  console.log('Hit One KIDS movies');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

      let query = `SELECT * FROM tbl_kidsmovies WHERE kids_id=${req.params.id}`;

    connect.query(query, (err, result) => {
      if (err) {
        return console.log(err.message);
      }

      res.json({movieData: result});
    })
  })
};


exports.one_kidsmusic = (req, res) => {
  console.log('hit KIDS one music');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

      let query = `SELECT * FROM tbl_kidsmusic WHERE kidsmusic_id=${req.params.id}`;

    connect.query(query, (err, result) => {
      if (err) {
        return console.log(err.message);
      }

      res.json({movieData: result});
    })
  })
};

exports.one_movie = (req, res) => {
  console.log("hit all movies");
  connect.getConnection((err, connection) => {
    if(err){
      return console.log(err.message);
    }
    let movquery = `SELECT * FROM tbl_movies WHERE movies_id=${req.params.id}`;
    let query = `SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`;
  console.log(req.params.id, req.params.movie);
  connect.query(query, (error, commentrows) => {
    connect.query(movquery, (error, rows) => {
    connection.release();
    if (error){
      console.log(error);
    }
    console.log(rows);
    res.render('watch_movies', {
      movie : req.params.id,
      watchData : rows[0],
      data : JSON.stringify(commentrows),
      mainpage : false,
      videopage : true
    });
      });
  });
});
};



exports.one_music = (req, res) => {

  console.log("hit all movies");
    connect.getConnection((err, connection) => {
      if(err){
        return console.log(err.message);
      }
      let movquery = `SELECT * FROM tbl_music WHERE music_id=${req.params.id}`;
      let query = `SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`;
    console.log(req.params.id, req.params.movie);
    connect.query(query, (error, commentrows) => {
      connect.query(movquery, (error, rows) => {
      connection.release();
      if (error){
        console.log(error);
      }
      console.log(rows);
      res.render('watch_music', {
        movie : req.params.id,
        musicData : rows[0],
        data : JSON.stringify(commentrows),
        mainpage : false,
        videopage : true
      });
        });
    });
  });
  };


exports.reviews_post = (req, res) => {
  console.log('hit post review route');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

      query = `INSERT INTO tbl_comments (comments_id, comments_auth, comments_copy, comments_date, comments_movie, comments_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP(), "${req.body.id}", "${req.body.stars}");`

    connect.query(query, (err, rows) => {
      if (err) {
        return console.log(err.message);
      }

      res.json(rows);
    })
  })
};
