require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select {|file| !File.directory? file}
  end

  def import
    files.each do |file|
      artist = file.split(" - ")[0]
      song = file.split(" - ")[1]
      Artist.find_or_create_by_name(artist).add_song(song)
    end
  end
end
