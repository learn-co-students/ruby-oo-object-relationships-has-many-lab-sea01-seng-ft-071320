# How can an artist have many songs and a song belong to an artist? An individual
# song will need to have a reference to the artist it belongs to, meaning it will
# need to have an `artist=()` and `artist` method.
# Which means the song class will need to have a class variable that holds
# all instances of every song that's been created in an array. To access that
# array, the song class will also need a class method that returns the class
# variable holding those instances.
require 'pry'
class Song
    attr_accessor :artist, :name
    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        @artist
    end

    def self.all
    @@all
    end

    def artist_name
        self.artist == nil ? self.artist : self.artist.name
    end
    
end
