class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    Doctor.new_appointment(date,self,doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appointment|
      appointment.patient == self
    }
  end
end
