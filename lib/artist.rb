class Artist
    attr_accessor :name  
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        Song.new(song_name)
        song_name = "Rolling in the Deep" 
        # name.add_song("Rolling in the Deep")
        # name.songs
        # add_song(song_name)
        # name = Song.new
    end
end


