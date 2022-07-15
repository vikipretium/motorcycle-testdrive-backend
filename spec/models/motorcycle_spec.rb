require 'rails_helper'

describe Motorcycle, type: :model do
  describe 'Check model relation of Motorcycle models' do
    it { should have_many :users }
    it { should have_many :reservations }
  end

  describe 'field validation of Motorcycle model' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :image }
    it { should validate_presence_of :specification }
    it { should validate_presence_of :price }
  end
end