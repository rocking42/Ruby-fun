require_relative 'playlist'

describe Movie do

  before do
    @initial_rank = 9
    @movie = Movie.new("goonies", @initial_rank)
    @playlist = Playlist.new("happy")
  end

  it "Has a capitalized title" do
    expect(@movie.title).to eq("Goonies")
  end

  it "Playlist can add movies" do
    @playlist.add_movie(@movie)
  end

  it "has an initial rank" do
    expect(@movie.rank).to eq 9
  end

  it "has a string representation" do
    expect(@movie.to_s).to eq "MOVIE\nMovie title: Goonies\nRating: 9\nDuration: 100 min"
  end

  it "increases rank by one when given thumbs up" do
    expect(@movie.thumbs_up).to eq @initial_rank + 1
  end

  it "decreases rank by one when given a thumbs down" do
    expect(@movie.thumbs_down).to eq @initial_rank - 1
  end



  context "created with defaults" do
    before do
      @movie = Movie.new("goonies")
    end

    it "has a duration of 100" do
      expect(@movie.duration).to eq 100
    end

    it "has a rank of 1" do
      expect(@movie.rank).to eq 1
    end
  end


  context "rank of at least 10" do

    before do
      @movie = Movie.new("goonies", 10)
    end

    it "is a hit" do
      expect(@movie.status).to eq "Hit"
    end

    it "should be a false" do
      expect(@movie.hit?).to eq true
    end

  end

  context "with a rank of less than 10" do
    before do
      @movie = Movie.new("rage", 9)
    end

    it "should be a flop" do
      expect(@movie.status).to eq "Flop"
    end

    it "should be a false" do
      expect(@movie.hit?).to eq false
    end
  end
end
