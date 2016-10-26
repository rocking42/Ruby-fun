def now_time
  never_time = Time.new
  time_new = never_time.strftime("%I:%m:%S")
end
user = "Ned"
puts "Hello #{user} the time is #{now_time}"

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

class Game

  attr_reader :name
  def initialize(name)
    @name = name
    @players = []
  end

  def add_players(player)
    @players << player
  end

  def list
    puts "There are #{@players.length} in #{@name}"
    puts @players
  end

end
player1 = Player.new("moe", 100, 103)
player2 = Player.new("larry", 60, 65)
player3 = Player.new("curly", 125, 130)
player4 = Player.new("shoop", 90, 122)
players = Game.new("First Game")
players.add_players(player1)
players.add_players(player2)
players.add_players(player3)
players.add_players(player4)
players.list
puts players.name
