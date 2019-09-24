class Artist 
 
 @@all = []
attr_accessor :name 

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
  
  def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    unless @@all.find {|artist| artist.name = name}
      Artist.new(name)
    else @@all.find {|artist|artist.name = name}
    end

  end
   
  def print_songs
     puts songs.collect { |song| song.name }
  end

end
