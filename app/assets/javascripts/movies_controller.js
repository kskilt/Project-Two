$(function() {
  const $description = $("#movies")
  $description.on("click", function(e){

    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      const $list = $("div.movies")
      const movie = response.movie
      const movieObject = new Movie(movie.name, movie.description)
      $list.html("")
      $list.append(videoGameObject.videoGameEl())
    })
  })
})
