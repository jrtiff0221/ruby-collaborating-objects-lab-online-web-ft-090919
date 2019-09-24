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
   song_name = file.split("-")[1]
    song_name
    
  end
    
   
 

  
end