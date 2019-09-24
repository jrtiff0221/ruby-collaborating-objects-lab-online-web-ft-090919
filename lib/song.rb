class Song

  @@all =[]
attr_accessor :artist, :name 

  def initialize(name)
    @name = name
    save
    self
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
    song.name = song_name
    song.artist_name = artist_name
  end
  
  def name=(name)
    @name = name
  end
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  
end