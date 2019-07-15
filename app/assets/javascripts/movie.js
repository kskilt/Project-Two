//class Movie

class Movie {
  constructor(response){
    this.description = response.movie.description
    this.name = response.movie.name

  }

  movieTemplate() {
    $("#movies").append(`
      <h4> ${this.description} </h4>
      `)
  }
}
