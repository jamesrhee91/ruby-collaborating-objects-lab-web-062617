require 'pry'
require_relative './song.rb'

class Artist
  attr_accessor :name, :song
  @@all = []


  def initialize(name)
    @name = name
    @song = []
    @@all << self
  end

  def add_song(song)
    self.song << song
  end

  def songs
    self.song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    check = self.all.find {|artist| artist.name == name}
    check ? check : self.new(name)
  end

  def print_songs
    self.song.map {|song| puts song.name}
  end

end
