class ActorsController < ApplicationController

  # def first_actor
  
  #   actor = Actor.find_by(id: 01)
  #   render json: actor.as_json

  # end

  # def query_id
  #   actor_id = params[:id]
  #   actor = Actor.find_by(id: actor_id)
  #   render json: actor.as_json
  # end

  # def wildcard_id
  #   actor_id = params[:id]
  #   actor = Actor.find_by(id: actor_id)
  #   render json: actor.as_json
  # end

  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render template: "actors/show"
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"],
      movie_id: params["movie_id"]
    )
    @actor = actor
    if actor.save
      render template: "actors/show"
    else
      render json: {errors: actor.errors.full_messages}, status: 422
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age
    @actor.movie_id = params["movie_id"] || @actor.movie_id
    if @actor.save
      render template: "actors/show"
    else
      render json: {errors: actor.errors.full_messages}, status: 422
    end
  end

  def destroy
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    actor.destroy
    render json: {message: "Actor deleted"}
  end

end