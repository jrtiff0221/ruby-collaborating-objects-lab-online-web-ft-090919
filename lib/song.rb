class Song
  attr_accessor :artist, :name 
  @@all =[]
  
  def initialize(name)
    self.name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  
  def self.new_by_filename(file)
    artist_name, song_name = file.split("-")
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end

end