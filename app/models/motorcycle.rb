class Motorcycle < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  validates :name, :image, :specification, :price, presence: true
  validates_numericality_of :price, on: :create
end
