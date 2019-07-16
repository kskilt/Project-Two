// showings.js

$(function()  {
  $("#new_showing").on("submit", function(event) {
    event.preventDefault()
    $.ajax({
      method: "POST",
      url: this.action,
      dataType: "JSON",
      data: $(this).serializeArray()
    }).done(function(response){
      const showing = new Showing(response)
      $("#showings").append(showing.showingTemplate())
    })
  })
})
