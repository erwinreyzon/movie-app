require "http"

response = HTTP.get("https://localhost:3000/movies.json")

movies = response.parse(:json)
pp movies