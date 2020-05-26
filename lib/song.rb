class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.all << self
   end
  def Song.create
  song = self.new
  self.all << song
  song
end
  def Song.new_by_name(name)
song= self.new
song.name = name
song
  end
 def Song.create_by_name(name)
  song = self.new
  song.name = name
  self.all << song
  song
 end
 def Song.find_by_name(name)
   self.all.find{|person| person.name == name}
end
def Song.find_or_create_by_name(name)
  if Song.find_by_name(name)
  name
  else
    name = self.new
    name
   end
end
end