const myApp ={
movieData(movies) {
      movies.forEach(movie => {myApp.vm.movies.push(movie);
    });
  },

  musicData(music) {
        music.forEach(song => {myApp.vm.music.push(song);
      });
    },

  vm : new Vue({
    el : '#app',
    data : {
      movies : [],
      music : []
    },
    methods : {

    },
    delimiters : ["${", "}"]
  })
}

myApp.movieData(appData.movies);
myApp.musicData(appData.music);
