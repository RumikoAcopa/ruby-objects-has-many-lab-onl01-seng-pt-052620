class Artist
    attr_accessor :name 
      @@song_count = 0 
      
    def initialize(name)
        @name = name
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
        new_song = Song.new(song_name)
        #self.songs << song
        new_song.artist = self
        @@song_count += 1 
    end
    
    def Artist.song_count 
      Song.all.count
    end
    
    
end


