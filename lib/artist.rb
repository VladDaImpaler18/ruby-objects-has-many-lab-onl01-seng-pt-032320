require 'pry'
class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select{|song_obj| song_obj.artist == self}
  end
  
  def add_song(song_obj)
   song_obj.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
 end
  
  def self.song_count
    Song.all.count {|song_obj| song_obj.artist}
  end
end