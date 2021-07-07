# And an individual artist will
# need a method that returns a collection of all the songs that belong to that
# artist.
require 'pry'
class Artist 

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
    @songs = Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist= self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        Song.all.count
    end


end