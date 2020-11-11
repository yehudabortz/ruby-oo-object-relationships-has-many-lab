class Artist
    attr_accessor :name
        
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def song_count
        song_count = 0
        @@all.collect do |song|
            song == self.name
            song_count += 1
        end
        song_count
    end

    def songs
        all_artist_songs = []
        Song.all.map do |artists_song|
            artists_song == self
            all_artist_songs << artists_song
        end
        all_artist_songs
     end

     # 1. The Curent instance of Artist, ie. Michael Jackson is adding a song his entire collection.
     # 2. Tell the song instance that it's Artist associated with it is equal to Michael Jackson (self)
     # 3.

    def add_song(song_name)
        added_song = Song.all.detect {|name| name == song_name}
        added_song.artist = self
    end

    def self.song_count
        num_of_all_artist_songs = 0
        Song.all.map do |artists_song|
            artists_song == self
            num_of_all_artist_songs += 1
        end
        num_of_all_artist_songs
    end


end