class Movie {
  constructor(movie){
    this.description = movie.description
    this.movie = movie.name

  }

  moviesTemplate(movie) {
    return `
      <h4> ${movie.description} </h4>
      `
  }
}
