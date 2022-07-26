require 'rails_helper'

describe 'Motorcycles Api', type: :request do
  before(:all) do
    Motorcycle.create!(name: 'bike 1', specification: 'specification 1', price: 100, image: 'image 1')
  end

  describe 'ap1/v1/motorcycle' do
    it 'returns all motorcycles' do
      get '/api/v1/motorcycles'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['data'].size).to eq(1)
    end
  end

  describe 'ap1/v1/motorcycle/:id' do
    it 'returns a motorcycle' do
      get '/api/v1/motorcycles/1'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['data']['name']).to eq('bike 1')
    end
  end
end
