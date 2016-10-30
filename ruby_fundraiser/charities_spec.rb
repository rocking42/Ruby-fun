require_relative 'charities'
$stdout = StringIO.new


describe Charities do
  before do
    @charities = Charities.new("Example group")
  end

  context "Randomly assign funds" do
    before do
      @initial_funds = 1000
      @crowdfund = Crowdfund.new("ABS", @initial_funds, 1500)
      @charities.add_project(@crowdfund)
    end

    it "should add funds on an even number" do
      Die.any_instance.stub(:roll).and_return(2)

      @charities.funding

      expect(@crowdfund.funds).to eq @initial_funds + 200
    end

    it "should lower funds on an odd number" do
      Die.any_instance.stub(:roll).and_return(5)

      @charities.funding

      expect(@crowdfund.funds).to eq @initial_funds - 200
    end


  end

end
