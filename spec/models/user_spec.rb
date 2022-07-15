require 'rails_helper'

describe User, type: :model do
  describe 'Check model relation of Payment models' do
    it { should have_many :reservations }
    it { should have_many :motorcycles }
  end

  describe 'field validation of User model' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone_number }
  end
end