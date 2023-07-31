puts "🌱 Seeding spices..."

# Seed your database here
# seed.rb

# Make sure to require the necessary models and set up the database connection
# before running the seed file.

# Example:
# require_relative 'models/patient'
# require_relative 'models/doctor'
# require_relative 'models/appointment'

# Sample patient data
patients_data = [
    { full_name: 'John Doe' },
    { full_name: 'Jane Smith' },
    { full_name: 'Michael Johnson' },
    { full_name: 'Trinity Shalom' },
    { full_name: 'Favour Rabecca' },
    { full_name: 'Levis Hope' },
    { full_name: 'Ethan Daniel' },
    { full_name: 'Precious Rehema' },
    { full_name: 'Seth Harmony' },
    { full_name: 'Margaret Neema' },
    { full_name: 'Fortune Nehemy' },
    { full_name: 'Lesley Berryl' }
  ]
  
  # Sample doctor data
  doctors_data = [
    { name: 'Dr. Smith', speciality: 'General Physician' },
    { name: 'Dr. Johnson', speciality: 'Cardiologist' },
    { name: 'Dr. Lee', speciality: 'Dermatologist' }
  ]
  
  # Sample appointment data
  appointments_data = [
    {
      cancer_service: false,
      apt_date: '2023-08-15',
      apt_time: '10:00 AM',
      appointment_notes: 'Regular checkup',
      patient_id: 1, # Assuming the patient with ID 1 is John Doe
      doctor_id: 1   # Assuming the doctor with ID 1 is Dr. Smith
    },
    {
      cancer_service: true,
      apt_date: '2023-08-20',
      apt_time: '2:30 PM',
      appointment_notes: 'Follow-up after surgery',
      patient_id: 2, # Assuming the patient with ID 2 is Jane Smith
      doctor_id: 2   # Assuming the doctor with ID 2 is Dr. Johnson
    },
    {
      cancer_service: false,
      apt_date: '2023-08-25',
      apt_time: '11:15 AM',
      appointment_notes: 'Skin allergy consultation',
      patient_id: 3, # Assuming the patient with ID 3 is Michael Johnson
      doctor_id: 3   # Assuming the doctor with ID 3 is Dr. Lee
    }
  ]
  
  # Seed patients
  patients_data.each do |patient_data|
    Patient.create(patient_data)
  end
  
  # Seed doctors
  doctors_data.each do |doctor_data|
    Doctor.create(doctor_data)
  end
  
  # Seed appointments
  appointments_data.each do |appointment_data|
    Appointment.create(appointment_data)
  end
  
  puts 'Seed data created successfully!'
  

puts "✅ Done seeding!"
