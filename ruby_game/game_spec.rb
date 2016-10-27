require_relative 'game'
$stdout = StringIO.new

describe Player do

  before do
    @player = Player.new("jerry", 50)
    @game = Game.new("first game")
  end

  it "Name should be capitlalized" do
    expect(@player.name).to eq "Jerry"
  end

  it "score should be correct" do
    expect(@player.score).to eq 55
  end

  it "Blam reduces 10 health" do
    @player.blam
    expect(@player.health).to eq 40
  end

  it "w00t reduces 15 health" do
    @player.w00t
    expect(@player.health).to eq 35
  end

  it "produces correct string" do
    expect(@player.to_s).to eq "I'm Jerry with a health of 50 and a score of 55"
  end

  it "game should be capitalized" do
    expect(@game.name).to eq "First game"
  end

  it "adds and display characters" do
    @game.add_players(@player)
  end

  context "default values" do

    before do
      @player = Player.new("jerry")
    end

    it "sets default health" do
      expect(@player.health).to eq 100
    end

  end

end
