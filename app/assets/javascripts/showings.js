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
      const showing = new Showing(response)

      showing.showingTemplate()
      const list = $("#showings")
// grab an place in the DOM you want to add content

// append/add/replace that spot in the DOM with yourObject.yourObjectsEl()
    })


  })
})
