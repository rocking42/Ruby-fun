require_relative 'game'

def now_time
  never_time = Time.new
  time_new = never_time.strftime("%I:%m:%S")
end
user = "Ned"
puts "Hello #{user} the time is #{now_time}"


player1 = Player.new("moe", 100, 103)
player2 = Player.new("larry", 60, 65)
player3 = Player.new("curly", 125, 130)
player4 = Player.new("shoop", 90, 122)
player5 = Player.new("Jeremy", 123, 80)
player6 = Player.new("offal", 91, 111)
players1 = Game.new("Knuckleheads")
players2 = Game.new("Chipmunks")
players1.add_players(player1)
players1.add_players(player2)
players1.add_players(player3)
players2.add_players(player4)
players2.add_players(player5)
players2.add_players(player6)
players1.play
players2.play
