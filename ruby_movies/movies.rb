class Movie
  attr_reader :rank
  attr_accessor :title, :duration

  def initialize(title, rank=1, duration=100)
    @title = title.capitalize
    @rank = rank
    @duration = duration
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def a_little_longer
    @duration += 10
  end

  def to_s
    puts "#{'movie'.upcase}\nMovie title: #{@title}\nRating: #{@rank}\nDuration: #{@duration} min"
  end
end

class Playlist

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end
  end

end

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
