// showings.js

$(function()  {
// Sort of what the js controller file was doing
// This is where I use jQuery
  $("#new_showing").on("submit", function(event) {
    event.preventDefault()
    $.ajax({
      method: "POST",
      url: this.action,
      dataType: "JSON",
      data: $(this).serializeArray()
    }).done(function(response){
      console.log(response)
      const time = response.time
      const theater = response.theater.name
      const theater_id = response.theater_id
      const movie = response.movie.name
      const movie_id = response.movie_id
      const screen = response.screen.screen_type
      const showing = new Showing(time, theater, movie, screen)



// grab an place in the DOM you want to add content

// append/add/replace that spot in the DOM with yourObject.yourObjectsEl()
    })


  })
})
