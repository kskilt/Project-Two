// showings.js

$(function()  {
// Sort of what the js controller file was doing
// This is where I use jQuery
  $("#new_showing").on("submit", function(event) {
    event.preventDefault()
    $.ajax({
      method: "POST",
      url: this.action,
      dataType: "json",
      data: $(this).serializeArray()
    }).done(function(response){
console.log(response)
    })


  })
})
