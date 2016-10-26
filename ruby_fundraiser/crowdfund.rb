class Crowdfund

  attr_reader :funds, :goal
  attr_accessor :name
  def initialize(name, funds, goal=10000)
    @name = name.upcase
    @funds = funds
    @goal = goal.to_f
  end

  def add_funds(n)
    @funds += n
    puts "Added $#{n} to #{@name}"
  end

  def lose_funds(n)
    @funds -= n
  end

  def name=(new_name)
    @name = new_name.upcase
  end

  def remaining
    puts "#{@name} has $#{@goal - @funds} remaining till their goal"
  end

  def to_s
    "Project #{@name} has $#{@funds} towards a goal of $#{@goal}"
  end
end
