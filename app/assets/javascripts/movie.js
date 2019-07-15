//class Movie

class Movie {
  constructor(response){
    this.description = response.movie.description
    this.name = response.movie.name
    this.id = response.movie.id
  }

  movieTemplate() {
    $(`#movie_${this.id}_description`).append(`
      <h4> ${this.description} </h4>
      `)
  }
}
