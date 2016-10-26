class Song
  include Enumerable
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
end


  def play
    puts "Playing '#{name}' by #{artist} (#{duration}) mins..."
  end

   def each_filename
    basename = "#{artist}-#{name}".gsub(" ", "-").downcase
    extensions = [".mp3",".wav", ".aac"]
    extensions.each { |t| yield basename + t}
  end
end

song1 = Song.new("Harder better faster", "Daft Punk", 3.20)
song2 = Song.new("Happy", "Weeknd", 4.50)
song3 = Song.new("fun", "Daft Punk", 2.40)
song4 = Song.new("Best track", "Best new band", 5.20)

class Playlist
  include Enumerable
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    
  end

  def each
    @songs.each do |y| 
      yield y
    end
  end

  def each_tagline
    each { |y| puts "#{y.name} by - #{y.artist}"}
  end

  def play_songs
    each {  |y| y.play }
  end

  def each_by_artist(n)
    select { |y| y.artist == n }.each { |song| yield song}
  end

 
end



playlist = Playlist.new("thursday") 
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)

playlist.play_songs

okie_songs = playlist.select { |song| song.name =~ /Happy/}
p okie_songs

daft_songs = playlist.select { |song| song.artist == "Daft Punk"}.reduce(0) { |sum, variable| sum + variable.duration }
p daft_songs

longer_songs = playlist.map { |n| n.name + " new track" }
puts longer_songs

playlist.each_tagline

puts "played"
p playlist.each_by_artist("Daft Punk") { |y| y.play}

song1.each_filename { |filename| puts filename}










