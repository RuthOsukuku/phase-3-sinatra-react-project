# models/add_appointment.rb
class AddAppointment < ActiveRecord::Base
  has_many :appointment_infos
end

