class Song

  @@all =[]
attr_accessor :artist, :name 

  def initialize(name)
    @name = name
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
    puts song_name
    song = Song.new(song_name)
    song.artist = 
  end
  
  def self.artist_name(name)
    Artist.find_or_create_by_name(name)
  end

  
end