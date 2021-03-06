# frozen_string_literal: true

# Full CRUD Movies Controller
class MoviesController < ApplicationController
  before_action :authorize
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json do
        render json: { movie: @movie }
      end
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render "new"
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def showing
    @movie = Movie.find(params[:id])
    render json: @movie.showings, each_serializer: ShowingSerializer
  end

private

  def movie_params
    params.require(:movie).permit(:name, :description)
  end
end
