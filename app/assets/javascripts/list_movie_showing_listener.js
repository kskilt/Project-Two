var $showing = $(".showing_button")

$showing.on("click", function(event){
  const movie_id = event.target.dataset.id
    $.ajax({
      method: "GET",
      url: `/movies/${movie_id}/showing`,
      dataType: "JSON"
    }).done(function(response){
      console.log(response)
      const listShowings = new ListShowings(response)
      listShowings.listTemplate()
      const $list = $("#list_showings")
    })
})
