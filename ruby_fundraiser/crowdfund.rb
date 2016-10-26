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

project1 = Crowdfund.new("abc", 500, 3000)
project2 = Crowdfund.new("lmn", 300, 5000)
project3 = Crowdfund.new("xyz", 250, 3400)
project4 = Crowdfund.new("new", 1200, 5000)
projects = [].push(project1, project2, project3)
puts projects
projects.each do |t|
  t.remaining
  t.goal
  t.funds
  t.add_funds(500)
end

puts project1.funds.to_i
counter = -1
puts "testing lowest funded program for replacement"
projects.each do |t|
  counter += 1
  if t.funds.to_i <= 770
    puts "Deleting #{t.name}"
    projects.delete(t)
    projects.push(project4)
    puts "added #{project4.name}"
  end
end

puts projects
project4.name = "next"
puts project4
