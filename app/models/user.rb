class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :motorcycles, through: :reservations, dependent: :destroy
  has_many :motorcycles

  validates :full_name, :email, presence: true
end
