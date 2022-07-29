class User < ApplicationRecord
  has_secure_password
  has_many :reservations, dependent: :destroy
  has_many :motorcycles, through: :reservations, dependent: :destroy

  validates :full_name, :email, presence: true
end
