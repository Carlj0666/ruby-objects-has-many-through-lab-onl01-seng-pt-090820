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
    return Appointment.new(date, self, doctor)
  end
    
    
  def appointments
    Appointment.all.map do |appointment| # could use select
      if appointment.patient = self
        appointment.patient
      end
    end
  end
  
  
end