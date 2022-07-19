require 'rails_helper'

RSpec.describe 'Motorcycles', type: :request do
  let!(:motorcycle) do
    FactoryBot.create(:motorcycle, name: 'Honda', image: 'image.jpg', specification: 'specification', price: 100) 
    FactoryBot.create(:motorcycle, name: 'Honda', image: 'image.jpg', specification: 'specification', price: 100) 
    FactoryBot.create(:motorcycle, name: 'Honda', image: 'image.jpg', specification: 'specification', price: 100) 
  end
  
  describe 'GET /motorcycles' do
    it 'should return all motorcycles' do
      get '/api/v1/motorcycles'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
