class Genre
  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(name)
    self.songs << name
  end
  def artists
    self.songs.map {|t| t.artist}
  end
end
