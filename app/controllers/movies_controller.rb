class MoviesController < ApplicationController

  def all_movies
    movies = Movie.all
    render json: movies.as_json
  end

end
