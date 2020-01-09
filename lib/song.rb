class Song
    # Class attributes and methods
    @@count = 0
    @@artists = []
    @@genres = []

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        artist_counts = {}

        @@artists.select do |artist_name|
            if artist_counts.has_key?(artist_name) then
                artist_counts[artist_name] = artist_counts[artist_name] + 1
            else
                artist_counts[artist_name] = 1
            end
            
        end

        return artist_counts
    end

    def self.genre_count
        genre_counts = {}

        @@genres.select do |genre|
            if genre_counts.has_key?(genre) then
                genre_counts[genre] = genre_counts[genre] + 1
            else
                genre_counts[genre] = 1
            end
            
        end

        return genre_counts     
    end

    # Instance attributes and methods
    attr_reader :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

end