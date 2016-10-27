require_relative 'movie'

movie = Movie.new("godfather", 9)

if movie.rank >= 10
  puts "Hit"
elsif movie.rank < 10
  puts "Flop"
end
