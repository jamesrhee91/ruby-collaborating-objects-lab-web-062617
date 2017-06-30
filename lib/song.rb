require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    artist = Artist.new(filename.split(" - ")[0])
    song.name = filename.split(" - ")[1]
    song.artist = artist
    song
  end
end


# filename = "Michael Jackson - Black or White - pop.mp3"
# [Michael Jackson, Black or White, pop.mp3]
# song = Song.new("Black or White")
# song.name = "black or white"

# Song.new("Michael")

# new_instance = Song.new_by_filename("Michael Jackson - Black or White - pop.mp3")
# new
