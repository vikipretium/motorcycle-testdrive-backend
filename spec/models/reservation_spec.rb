require 'rails_helper'

describe Reservation, type: :model do
  describe 'Check model relation of Reservation models' do
    it { should belong_to :user }
    it { should belong_to :motorcycle }
  end

  describe 'field validation of Reservation model' do
    it { should validate_presence_of :date }
    it { should validate_presence_of :city }
  end
end
