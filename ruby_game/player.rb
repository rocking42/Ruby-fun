class Player

  attr_reader :health
  attr_accessor :name
  def initialize(name, health=100, score=100)
    @name = name.capitalize
    @health = health
    @score = score
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @name.length + health
  end

  def blam
    @health -=10
    puts "#{@name}".ljust(30,".") + "got blammed!"
  end

  def w00t
    @health -= 15
    puts "#{@name}".ljust(30,".") + "got w00ted!"
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
