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
    this.constructor.all.push(this)
  }

  showingTemplate() {
    return (`
      <h2><a href="localhost:3000/movies/${this.movie_id}"> ${this.movie}</a></h2>
      <ul>
        <li>
          Showing Day - ${this.day}
        </li>
        <li>
          Showing Time -  ${this.time_of_day}
        </li>
        <form class="button_to" method="post" action="/theaters/${this.theater_id}/showings/${this.id}">
          <input type="hidden" name="_method" value="delete">
          <input data-confirm="Are you sure?!" type="submit" value="Delete Showing">
        </form>
        <br>
      </ul>
    `)
  }

  movieShowingTemplate() {
    return(`
        <li> Tickets available for ${this.day} at ${this.time_of_day} in ${this.screen} for ${this.theater} </li>
    `)
  }
}

Showing.all = []
