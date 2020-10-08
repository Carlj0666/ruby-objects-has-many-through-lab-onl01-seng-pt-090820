require "pry"

class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  
  def appointments
    Appointment.all.each do |appointment|
      if appointment.doctor = self
        appointment
      end
    end
  end
  
  
  def patients
    Appointment.all.collect do |appointment|
      #binding.pry
      if appointment.doctor == self
        appointment.patient
      end
    end
  end
  
  # def genres
  #   Song.all.collect do |song|
  #     #binding.pry
  #     if song.artist == self
  #       song.genre
  #     end
  #   end
  # end
  
end