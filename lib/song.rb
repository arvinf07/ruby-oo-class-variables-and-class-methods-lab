require 'pry'

class Song

  attr_accessor :name, :genre, :artist
  @@count, @@artists, @@genres = 0, [], []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist

    @@count += 1
    @@artists << artist
    @@genres << genre
  end  

  def self.count
    @@count
  end  

  def self.artists
    @@artists.uniq
  end  

  def self.genres
    @@genres.uniq
  end  

  def self.genre_count
    genre_count = {}
    @@genres.uniq.each {|genre| genre_count[genre] = 0}
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 0  
      end  
    end  
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.uniq.each {|artist| artist_count[artist] = 0}
    @@artists.each do |artist|
      if artist_count.keys.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 0  
      end  
    end  
    artist_count
  end  

end
