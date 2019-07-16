var $showing = $(".showing_button")

$showing.on("click", function(event){
  const movie_id = event.target.dataset.id
    $.ajax({
      method: "GET",
      url: `/movies/${movie_id}/showing`,
      dataType: "JSON"
    }).done(function(response){
      const listShowings = new ListShowings(response)
      console.log(response[0].movie_id)
      const $list = $(`#list_${response[0].movie_id}_showings`)
      $list.html("")
      $list.append(listShowings.listTemplate())
    })
})
