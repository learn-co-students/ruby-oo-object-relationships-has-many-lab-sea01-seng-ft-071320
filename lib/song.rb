require 'pry'

class Song
  attr_accessor :artist, :name
  

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end


  def artist_name
    #a method for a shorter way of getting artist name and checking if a song has one 
   
   if self.artist == nil
      nil
   else
    self.artist.name
   end 

  end


# binding.pry


end # end class Song