class Genres
  include Enumerable
  def initialize
    @names = ["Action", "Comedy", "Sci-fi", "Adventure"]
  end

  def my_each
    @names.each { |name| yield name }
  end
end

genres = Genres.new

genres.my_each { |names| puts names }
fast = genres.detect  { |t| t == "Action"}
puts fast
