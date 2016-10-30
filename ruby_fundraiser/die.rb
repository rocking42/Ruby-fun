class Die

  attr_reader :number

  def initialize
    roll
  end

  def roll
    @number = rand(1..10)
  end
end
