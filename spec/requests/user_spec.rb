require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:all) do 
    @user = User.create!( full_name: "user 1", email: "email 1", password: "password")
  end

  describe 'ap1/v1/users' do
    it 'returns all users' do
      get '/api/v1/users'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"].size).to eq(1)
    end
  end

  describe 'ap1/v1/users/:id' do
    it ' returns a specif user' do
      get "/api/v1/users/#{@user.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"]["full_name"]).to eq("user 1")
    end

  end
end
