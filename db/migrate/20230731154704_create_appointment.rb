class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient
      t.belongs_to :doctor
      
      t.string :cancer_service
      t.date :apt_date
      t.time :apt_time
      t.string :appointment_notes
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
     
    end
  end
end
