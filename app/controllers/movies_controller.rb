class MoviesController < ApplicationController

  # def all_movies
  #   movies = Movie.all
  #   render json: movies.as_json
  # end

  # def first_movie
  #   movie = Movie.find_by(id: 1)
  #   render json: movie.as_json
  # end

  def index
    @movies = Movie.all
    render template: "movies/index"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render template: "movies/show"
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"]
    )
    @movie = movie
    if movie.save
      render template: "movies/show"
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    if @movie.save
      render template: "movies/show"
    else
      render json: {error: movie.errors.full_messages}, status: 422
    end
  end

  def destroy
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    movie.destroy
    render json: {message: "Movie deleted"}
  end

end
