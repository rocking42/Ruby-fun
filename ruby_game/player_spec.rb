require_relative 'player'
$stdout = StringIO.new

describe Player do

  before do
    @initial_health = 50
    @player = Player.new("jerry", @initial_health)
  end

  it "Name should be capitlalized" do
    expect(@player.name).to eq "Jerry"
  end

  it "score should be correct" do
    expect(@player.score).to eq @initial_health + @player.name.length
  end

  it "Blam reduces 10 health" do
    @player.blam
    expect(@player.health).to eq @initial_health - 10
  end

  it "w00t increases 15 health" do
    @player.w00t
    expect(@player.health).to eq @initial_health + 15
  end

  it "produces correct string" do
    expect(@player.to_s).to eq "I'm Jerry with a health of #{@initial_health} and a score of #{@initial_health + @player.name.length}"
  end

  context "default values" do

    before do
      @player = Player.new("jerry")
    end

    it "sets default health" do
      expect(@player.health).to eq 100
    end

  end

  context "Player wimpy or strong" do
    before do
      @strong_player = Player.new("James", 150)
      @wimpy_player = Player.new("Charly", 80)
    end

    it "should return true for health over 100" do
      expect(@strong_player.strong?).to eq true
    end

    it "should return false for health under 100" do
      expect(@wimpy_player.strong?).to eq false
    end

  end

end
