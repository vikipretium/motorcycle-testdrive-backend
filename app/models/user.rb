class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :motorcycles, through: :reservations, dependent: :destroy
  has_many :motorcycles, dependent: :destroy

  validates :first_name, :last_name, :email, :phone_number, presence: true
  validates_numericality_of :phone_number, on: :create
end
