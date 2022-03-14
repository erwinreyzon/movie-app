Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/actor", controller: "actors", action: "first_actor"

  # get "/movies" => "movies#all_movies"

  # get "/first_movie" => "movies#first_movie"

  # get "/actor" => "actors#query_id"

  # get "/actor/:id" => "actors#wildcard_id"

  # post "/actor" => "actors#query_id"

  # post "/actor/:id" => "actors#wildcard_id"

  get "/actors" => "actors#index"

  get "/actors/:id" => "actors#show"

  post "/actors" => "actors#create"

  patch "/actors/:id" => "actors#update"

  delete "/actors/:id" => "actors#destroy"

end
