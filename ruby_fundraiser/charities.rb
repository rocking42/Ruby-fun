require_relative 'crowdfund'
require_relative 'die'

class Charities

  attr_reader :name
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




  def funding
    die = Die.new
    @charities.each do |charity|
      if die.roll % 2 === 0
        charity.add_funds(200)
      elsif die.roll % 1 === 0
        charity.lose_funds(200)
      end
    end
  end

  def list
    puts "There are #{@charities.length} Projects in #{@name}"
    @charities.each do |charity|
      puts charity
      puts"#{charity.funded?}"
    end
  end

end
