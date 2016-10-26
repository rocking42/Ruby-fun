require_relative 'crowdfund'

class Charities

  def initialize(name)
    @name = name
    @charities = []
  end

  def add_project(charity)
    @charities << charity
  end

  def crisis
    @charities.each { |t| t.lose_funds(100)}
  end

  def angel
    @charities.each { |t| t.add_funds(200)}
  end

  def list
    puts "There are #{@charities.length} Projects in #{@name}"
    puts @charities
  end

end
