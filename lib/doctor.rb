class Doctor
  attr_reader :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointments(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end
  def patients
    self.appointments.map {|t| t.patient}
  end
end
