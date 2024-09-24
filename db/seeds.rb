# db/seeds.rb

# Create Cities
city1 = City.create(name: "Paris")
city2 = City.create(name: "Lyon")

# Create Specialties
specialty1 = Specialty.create(name: "Cardiology")
specialty2 = Specialty.create(name: "Dermatology")

# Create Doctors
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "75001", city: city1)
doctor2 = Doctor.create(first_name: "Jane", last_name: "Smith", zip_code: "69001", city: city2)

# Associate specialties with doctors
doctor1.specialties << specialty1
doctor2.specialties << specialty2

# Create Patients
patient1 = Patient.create(first_name: "Alice", last_name: "Brown", city: city1)
patient2 = Patient.create(first_name: "Bob", last_name: "Johnson", city: city2)

# Create Appointments
Appointment.create(date: "2024-09-25 10:00:00", doctor: doctor1, patient: patient1)
Appointment.create(date: "2024-09-26 11:00:00", doctor: doctor2, patient: patient2)
Appointment.create(date: "2024-09-27 12:00:00", doctor: doctor1, patient: patient2)
