// movie_listener.js

var $description = $(".movie_link")

$description.on("click", function(e){
  e.preventDefault()
  if($(`#movie_${e.target.id}_description`).text().trim().length == 0){
    $.getJSON(this.href).done(function(response){
      const movie = new Movie(response)
      movie.movieTemplate()
      const $list = $("#movies")
    })
  }
})
