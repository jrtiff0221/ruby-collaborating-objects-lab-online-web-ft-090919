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
  
 
  def self.new_by_filename(filename)
   
  

  
end