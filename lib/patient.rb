require "pry"


class Patient
  
  attr_accessor :name
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, doctor)
    #binding.pry
    Appointment.new(date, self, doctor)
  end
    
    
  def appointments
    #binding.pry
    Appointment.all.collect do |appointment| # could use select
      appointment.doctor
    end
  end
  
  
  #   def genres
  #   Song.all.collect do |song|
  #     #binding.pry
  #     if song.artist == self
  #       song.genre
  #     end
  #   end
  # end
  

  
end