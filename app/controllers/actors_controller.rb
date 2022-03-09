class ActorsController < ApplicationController

  def first_actor
  
    actor = Actor.find_by(id: 01)
    render json: actor.as_json

  end

end
