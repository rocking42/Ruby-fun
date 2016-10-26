require_relative 'playlist'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 6)
movie3 = Movie.new("appolo 13", 8)

playlist1 = Playlist.new("Kermit")

playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)

playlist1.play

playlist2 = Playlist.new("mickey")
movie4 = Movie.new("gremlins", 7)
movie5 = Movie.new("James Bond", 5)
movie6 = Movie.new("Ice Age", 4)

playlist2.add_movie(movie4)
playlist2.add_movie(movie3)

playlist2.play
