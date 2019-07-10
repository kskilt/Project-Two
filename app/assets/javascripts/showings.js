// showings.js

$(function()  {
// Sort of what the js controller file was doing
// This is where I use jQuery
  $("#showtime").on("click", (event) => {
    event.preventDefault()
    console.log(this)
  })
})
