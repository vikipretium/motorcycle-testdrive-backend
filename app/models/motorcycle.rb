class Motorcycle < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, :image, :specification, :price, presence: true
  validates_numericality_of :price, on: :create
end
