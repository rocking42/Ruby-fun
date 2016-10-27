require_relative 'player'

class Game

  attr_reader :name
  def initialize(name)
    @name = name.capitalize
    @players = []
  end

  def add_players(player)
    @players << player
  end

  def play
    "There are #{@players.length} players in #{@name}"
    @players
  end

end
