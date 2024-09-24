class Doctor < ApplicationRecord
    belongs_to :city
    has_many :doctor_specialties
    has_many :specialties, through: :doctor_specialties
    has_many :appointments
    has_many :patients, through: :appointments
  
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :zip_code, presence: true
  end