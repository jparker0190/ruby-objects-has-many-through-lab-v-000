class Patient
attr_reader :name, :appointments
@@all = []
def initialize(name)
  @name = name
  @appointments = []
end
def new_appointment(appointment)
  self.appointments << appointment
  appointment.patient = self
end
def doctors
  self.appointments.map {|t| t.doctor}
end
end
