class Movie
  attr_reader :title, :rating, :duration

  def initialize(title, rating, duration)
    @title = title
    @rating = rating
    @duration = duration
  end

  def watch
    puts "Watching #{title} - #{rating} (#{duration}) mins..."
  end
end

  movie1 = Movie.new("Toy Story", "G", 101)
  movie2 = Movie.new("Appolo 13", "PG", 121)
  movie3 = Movie.new("Cast away", "PG", 132)
  movie4 = Movie.new("Cars", "G", 51)

class MovieQueue
  include Enumerable
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie 
  end

  def each
    @movies.each { |movie| yield movie }
  end

  def each_by_rating(n)
    @movies.select { |m| m.rating == n }.each { |m| yield m}
  end

  def long_movies
    
  end
end

queue = MovieQueue.new("Friday Night")
queue.add_movie(movie1)
queue.add_movie(movie2)
queue.add_movie(movie3)
queue.add_movie(movie4)

queue.each { |movie| movie.watch}
puts "kids movies"
queue.each_by_rating('PG') { |movie| movie.watch}

long_movies = queue.select { |m| m.duration > 100 } 
p long_movies 

longer = queue.detect { |m| m.duration > 100}
puts "long movies"
p longer




