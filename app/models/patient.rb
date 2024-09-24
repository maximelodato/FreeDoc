class Patient < ApplicationRecord
    belongs_to :city
    has_many :appointments
    has_many :doctors, through: :appointments
  
    validates :first_name, presence: true
    validates :last_name, presence: true
  end