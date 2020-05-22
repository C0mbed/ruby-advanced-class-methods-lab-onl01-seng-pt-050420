require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end
    
  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    song_found = find_song = find_by_name(name)
    if song_found == nil 
      create_song = create_by_name(name)
    else
      find_song = find_by_name(name)
    end
=======
    find_song = find_by_name(name)
    create_song = create_by_name(name)
>>>>>>> 2b9d3a9d2945714996a4b5eb4ff92b0715fe2bc9
  end
  
  def self.alphabetical
    puts @@all
    sorted_songs = []
    self.all.each do |data|
      sorted_songs << data
    end
<<<<<<< HEAD
    sorted_songs.sort! { |a, b|  a.name <=> b.name }
  end
  
  def self.new_from_filename(filename)
    filename_array = filename.split("-")
    song = self.new
    song.name = filename_array[1][1..-5]
    song.artist_name = filename_array[0][0..-2]
    song
=======
    sorted_songs
>>>>>>> 2b9d3a9d2945714996a4b5eb4ff92b0715fe2bc9
  end
  
  def self.create_from_filename(filename)
    filename_array = filename.split("-")
    song = self.new
<<<<<<< HEAD
    song.name = filename_array[1][1..-5]
    song.artist_name = filename_array[0][0..-2]
    @@all << song
=======
    song.name = filename_array[1].slice(-1)
    song.artist_name = filename_array[0]
    binding.pry
>>>>>>> 2b9d3a9d2945714996a4b5eb4ff92b0715fe2bc9
    song
  end
  
  def self.destroy_all
    @@all.clear
  end

end
