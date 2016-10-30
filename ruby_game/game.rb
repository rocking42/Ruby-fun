require_relative 'player'
require_relative 'die'

class Game

  attr_reader :name
  def initialize(name)
    @name = name.capitalize
    @players = []
    @player = Player.new("jerry")
  end

  def add_players(player)
    @players << player
  end

  def play
    "There are #{@players.length} players in #{@name}"
    @players

    die = Die.new
    @players.each do |player|
      case die.roll
      when 5..6
        player.w00t
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped"
      end
    end
  end

end
