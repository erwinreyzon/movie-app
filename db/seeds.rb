# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# actor = Actor.new({first_name: "Jackie", last_name: "Chan", known_for: "Rush Hour"})
# actor.save

# actor = Actor.new({first_name: "Bruce", last_name: "Willis", known_for: "Die Hard"})
# actor.save

movie = Movie.new(title: "Kung Fu Hustle", year: 2008, plot: "A man becomes a kung fu legend in his own right.")
movie.save
movie = Movie.new(title: "Batman Begins", year: 2006, plot: "A billionare playboy disguises himself to fight crime.")
movie.save
movie = Movie.new(title: "Happy Gilmore", year: 1997, plot: "A hockey player decides to play golf to earn money to pay off his grandma's house")
movie.save