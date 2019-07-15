// class Showing
// I don't use jquery here
class Showing {
  constructor(response){
    this.time = response.time
    this.theater = response.theater.name
    this.theater_id = response.theater_id
    this.movie = response.movie.name
    this.movie_id = response.movie_id
    this.screen = response.screen.screen_type
  }

  showingTemplate(showing) {
    $("div.showing").append(`
      <h2><a href="localhost:3000/movies/${this.movie_id}"> ${this.movie}"</h2>
  <ul>
    <li>
      Showing Day - ${this.time}
    </li>
    <li>
      Showing Time -  ${this.time}
    </li>
    <br>
  </ul>
    `)
  }
}
