class ActorsController < ApplicationController

  # def first_actor
  
  #   actor = Actor.find_by(id: 01)
  #   render json: actor.as_json

  # end

  def query_id
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    render json: actor.as_json
  end

  def wildcard_id
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    render json: actor.as_json
  end

end