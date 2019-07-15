
var $description = $(".movie_link")

$description.on("click", function(e){
  e.preventDefault()
  $.getJSON(this.href).done(function(response){
    console.log(response)
    const $list = $("div.movies")
    const movie = response.movie
    const movieObject = new Movie(movie.name, movie.description)
    $list.html("")
    $list.append(movieObject.movieTemplate())
  })
})
