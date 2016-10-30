require_relative 'game'

$stdout = StringIO.new


describe Game do
  before do
    @game = Game.new("first game")
  end

  context "being played with two characters" do
    before do
      @initial_health = 100
      @player = Player.new("Jerry", @initial_health)

      @game.add_players(@player)
    end

    it "game name should be capitalized" do
      expect(@game.name).to eq "First game"
    end

    it "should w00t player with a high roll" do
      Die.any_instance.stub(:roll).and_return(5)
      @game.play

      expect(@player.health).to eq @initial_health + 15
    end

    it "should skip player with a medium roll" do
      Die.any_instance.stub(:roll).and_return(3)
      @game.play

      expect(@player.health).to eq @initial_health
    end

    it "should blam player with low roll" do
      Die.any_instance.stub(:roll).and_return(1)
      @game.play

      expect(@player.health).to eq @initial_health - 10
    end

  end

end
