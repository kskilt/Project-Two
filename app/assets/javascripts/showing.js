// class Showing
// I don't use jquery here
class Showing {
  constructor(time, theater, theater_id, movie, movie_id, screen){
    this.time = time
    this.theater = theater
    this.theater_id = theater_id
    this.movie = movie
    this.movie_id = movie_id
    this.screen = screen
  }

  showingTemplate(showing) {
    return(`
      <h2>${this.time}</h2>
  <ul>
    <li>
      Showing Day - <%= showing.time.strftime("%b %d  - %Y") %>
    </li>
    <li>
      Showing Time - <%= showing.time.strftime("%I:%M %p") %>
    </li>
    <li>
      <%= link_to showing.theater, theater_showings_path(showing) %>
    </li>
      <%= button_to "Delete Showing", theater_showing_path(showing.theater,showing),
      method: :delete, data: { confirm: 'Are you sure?!' } %>
    <br>
  </ul>
    `)
  }
}
