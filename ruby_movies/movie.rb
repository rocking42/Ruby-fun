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
    "#{'movie'.upcase}\nMovie title: #{@title}\nRating: #{@rank}\nDuration: #{@duration} min"
  end
end
