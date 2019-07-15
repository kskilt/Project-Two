// class Showing
// I don't use jquery here
class Showing {
  constructor(response){
    this.day = response.day
    this.time_of_day = response.time_of_day
    this.theater = response.theater_name
    this.theater_id = response.theater_id
    this.movie = response.movie_name
    this.movie_id = response.movie_id
    this.screen = response.screen_type
    this.id = response.id
  }

  showingTemplate() {
    $("#showings").append(`
      <h2><a href="localhost:3000/movies/${this.movie_id}"> ${this.movie}</a></h2>
      <ul>
        <li>
          Showing Day - ${this.day}
        </li>
        <li>
          Showing Time -  ${this.time_of_day}
        </li>
        <br>
      </ul>
    `)
  }
}
