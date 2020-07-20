require 'pry'

class Artist
  attr_accessor :name

  @@all = []  

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}  
  end
  
  
  def add_song(song)
  #song is an instance of a song with all attributes 
  #assign artist to their song
    song.artist = self
  end
  
  def self.all
    @@all
  end

  
  def add_song_by_name(song_name)
    # call song.new method  in Song class, return its instance
    # call add_song in Artist class w/ instance of the new song
    new_song = Song.new(song_name)
    add_song(new_song)

  end
  
  
  def self.song_count
    Song.all.count 
  end 

end  # end class