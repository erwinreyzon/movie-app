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
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    render json: movie .as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      english: params["director"],
      english: params["english"]
    )
    if movie.save
      render json: movie.as_json
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end

  def update
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english
    if movie.save
      render json: movie.as_json
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
