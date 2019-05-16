class Doctor
  
  attr_accessor :name, :appointments, :patients
  
  @@all = []
   
   def initialize(name)
     @name = name 
     @appointments = []
     @patients = []
     @@all << self
   end 
   
   def self.all
     @@all
   end 
   
   def new_appointment(date, patient)
     appt = Appointment.new(date, patient, self)
   end  
   
end 