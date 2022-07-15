class User < ApplicationRecord
  has_many :reservations
  has_many :motorcycles, through: :reservations

  validates :first_name, :last_name, :email, :phone_number, presence: true
  validates_numericality_of :phone_number, on: :create
end
