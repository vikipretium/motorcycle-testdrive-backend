require 'rails_helper'

RSpec.describe 'Reservations', type: :request do 
  before(:all) do
    @motorcycle = Motorcycle.create!(name: "bike 1", specification: 'specification 1', price: 100, image: 'image 1')
    @user = User.create!(full_name: "user 1", email: "email 1", password: "password 1")
    @reservation = Reservation.create!(user_id: @user.id, motorcycle_id: @motorcycle.id, date: "2020-01-01", city: "city 1")
    @reservation = Reservation.create!(user_id: @user.id, motorcycle_id: @motorcycle.id, date: "2020-01-01", city: "city 1")
  end

  describe 'ap1/v1/users/:id/reservation' do
    it 'returns a user reservation' do
      get "/api/v1/users/#{@user.id}/reservations"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"].size).to eq(2)
    end
  end

  describe 'api/v1/user/:id/reservation/' do
    it 'creates a user reservation' do
      expect do
          post "/api/v1/users/#{@user.id}/reservations", 
          params: { reservation: { user_id: @user.id, motorcycle_id: @motorcycle.id, city: 'city 1', date: '2020-01-01' } }
      end.to change { Reservation.count }.by(1)

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"]["city"]).to eq("city 1")
    end
  end

  describe 'api/v1/user/:id/reservation/:id' do
    it 'deletes a user reservation' do
      expect do
        delete '/api/v1/users/1/reservations/1'
      end.to change { Reservation.count }.by(-1)

      expect(response).to have_http_status(:no_content)
      expect(Reservation.find_by(id: 1)).to be_nil
    end
  end
end
