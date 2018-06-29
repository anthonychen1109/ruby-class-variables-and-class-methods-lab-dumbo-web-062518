require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres.uniq
  end

  def self.artists
    artist = @@artists.uniq
  end

  def self.genre_count
    my_hash = {}
    @@genres.each do |key|
      if my_hash.has_key?(key)
        my_hash[key] += 1
      else
        my_hash[key] = 1
      end
    end
    my_hash
  end

  def self.artist_count
    my_hash = {}
    @@artists.each do |name|
      if my_hash.has_key?(name)
        my_hash[name] += 1
      else
        my_hash[name] = 1
      end
    end
    my_hash
  end

end
