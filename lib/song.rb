require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

   def save
    self.all << self
   end
  
   def self.create
  song = self.new
  self.all << song
  song
 end
 
  def self.new_by_name(name)
   song= self.new
    song.name = name
   song
  end
 
 def self.create_by_name(name)
  song = self.create
   song.name = name
    self.all << song
     song
 end
  
 def self.find_by_name(name)
   self.all.find{|person| person.name == name}
end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
 
def self.destroy_all
  self.all.clear
end

      def self.alphabetical
    self.all.sort_by{|s| s.name}
  end
  
end
def self.new_from_filename(filename)
    parts = filename.split(" - ")
    artistsname = parts[0]
    songsname = parts[1][0..-5]

    song = self.new
    song.name = songsname
    song.artist_name = artistsname
    song
  end

  def self.create_from_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.create
    song.name = song_name
    song.artist_name = artist_name
    song
  end

  

  
  
  #.gsub(".mp3", "")