class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Patients CRUD

  get '/patients' do
    patients = Patient.all
    patients.to_json
  end

  get '/patients/:id' do
    patient = Patient.find_by(id: params[:id])
    patient.to_json
  end

  post '/patients' do
    patient = Patient.create(
      full_name: params[:full_name]
    )
    patient.to_json
  end

  delete '/patients/:id' do
    patient = Patient.find_by(id: params[:id])
    patient.destroy
  end

  # Doctors CRUD

  get '/doctors' do
    doctors = Doctor.all
    doctors.to_json
  end

  get '/doctors/:id' do
    doctor = Doctor.find_by(id: params[:id])
    doctor.to_json
  end

  post '/doctors' do
    doctor = Doctor.create(
      name: params[:name],
      speciality: params[:speciality]
    )
    doctor.to_json
  end

  delete '/doctors/:id' do
    doctor = Doctor.find_by(id: params[:id])
    doctor.destroy
  end

  # Appointments CRUD

  get '/appointments' do
    appointments = Appointment.all
    appointments.to_json
  end

  get '/appointments/:id' do
    appointment = Appointment.find_by(id: params[:id])
    appointment.to_json
  end

  post '/appointments' do
    appointment = Appointment.create(
      cancer_service: params[:cancer_service],
      apt_date: params[:apt_date],
      apt_time: params[:apt_time],
      appointment_notes: params[:appointment_notes],
      patient_id: params[:patient_id],
      doctor_id: params[:doctor_id]
    )
    appointment.to_json
  end

  delete '/appointments/:id' do
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
  end

  # Get attendees for a specific appointment

  get '/appointments/:id/attendees' do
    appointment = Appointment.find_by(id: params[:id])
    attendees = appointment.attendees
    attendees.to_json
  end

  # Get appointments for a specific patient

  get '/patients/:id/appointments' do
    patient = Patient.find_by(id: params[:id])
    appointments = patient.appointments
    appointments.to_json
  end

  # Get appointments for a specific doctor

  get '/doctors/:id/appointments' do
    doctor = Doctor.find_by(id: params[:id])
    appointments = doctor.appointments
    appointments.to_json
  end

  # Get patients for a specific appointment

  get '/appointments/:id/patients' do
    appointment = Appointment.find_by(id: params[:id])
    patient = appointment.patient
    patient.to_json
  end
end
