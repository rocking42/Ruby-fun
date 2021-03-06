require_relative 'movie'

class Playlist

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      number_rolled = roll_die
      case number_rolled
      when 5..6
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up"
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down"
      else
        puts "#{movie.title} was skipped"
      end



    end

  end

end
