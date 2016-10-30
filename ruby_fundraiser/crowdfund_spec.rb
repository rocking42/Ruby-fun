require_relative 'crowdfund'
$stdout = StringIO.new

describe Crowdfund do

  before do
    @funds = 2000
    @change = 100
    @crowdfund = Crowdfund.new("abc", @funds, 4200)
  end

  it "should print name uppercase" do
    expect(@crowdfund.name).to eq "ABC"
  end

  it "should output string" do
    expect(@crowdfund.to_s).to eq "Project ABC has $2000 towards a goal of $4200.0"
  end

  it "should add funds" do
    expect(@crowdfund.add_funds(@change)).to eq @funds + @change
  end

  it "should lower funds" do
    expect(@crowdfund.lose_funds(@change)).to eq @funds - @change
  end

  it "should show remaining funds" do
    expect(@crowdfund.remaining).to eq 2200
  end

  context "default values" do
    before do
      @crowdfund = Crowdfund.new("abc", 3000)
    end

    it "goals should be default" do
      expect(@crowdfund.goal).to eq 10000
    end

    it "should return false when not funded" do
      expect(@crowdfund.funded?).to eq false
    end

    it "should return true when fully funded" do
      @crowdfund.add_funds(10000)

      expect(@crowdfund.funded?).to eq true
    end
  end





end
