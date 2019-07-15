// movie_listener.js

var $description = $(".movie_link")

$description.on("click", function(e){
  e.preventDefault()
  $.getJSON(this.href).done(function(response){
    console.log(response)
    debugger;
    const movie = new Movie(response)
    movie.movieTemplate()
    const $list = $("#movies")
  })
})
