

require"pry"

class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def new_song(name, genre)
    #binding.pry
    Song.new(name, self, genre)
  end
      
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  # The Patient class needs an instance method, #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.
  
  def genres
    Song.all.collect do |song|
      #binding.pry
      if song.artist == self
        song.genre
      end
    end
  end
  
end