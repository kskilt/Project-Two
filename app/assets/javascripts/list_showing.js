class ListShowings {
  constructor(responseArray){
    this.response = responseArray
    this.createShowings()
  }

  createShowings() {
    this.response.forEach(function(showing) {
      new Showing(showing)
    })
  }

  listTemplate() {
    let template = "<ul>"
    Showing.all.forEach(function(showing) {
      template += showing.movieShowingTemplate()
    })
    template += "</ul>"
    Showing.all = []
    return template
  }
}
