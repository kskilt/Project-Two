class ListShowings {
  constructor(response){
    this.day = response.day
    this.time_of_day = response.time_of_day
    this.theater = response.theater_name
    this.theater_id = response.theater_id
    this.screen = response.screen_type
    this.id = response.id
  }

  listTemplate() {
    $(`#list_showings`).append(`
      <h4> Tickets available for ${this.day} at ${this.time_of_day} in ${this.screen} for ${this.theater} </h4>
      `)
  }
}
