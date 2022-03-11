Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "actor", controller: "actors", action: "first_actor"

  get "movies" => "movies#all_movies"

  get "first_movie" => "movies#first_movie"

end
