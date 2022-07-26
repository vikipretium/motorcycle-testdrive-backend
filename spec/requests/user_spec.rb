require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:all) do
    @user = User.create!(full_name: "user 1", email: "email 1", password: "password 1")
  end

  describe 'ap1/v1/users' do

    it 'returns all users' do
      get '/api/v1/users'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"].size).to eq(2)
    end
  end

  describe 'ap1/v1/users/:id' do
    before(:all) do
      @user = User.create( full_name: "user 1", email: "email 1", password: "password")
    end

    it ' returns a specific user' do
      get "/api/v1/users/#{@user.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"]["full_name"]).to eq("user 1")
    end
  end

  describe 'api/v1/users/' do 
    it 'creates a user' do
      expect do
        post '/api/v1/register', 
        params: {  full_name: "user 2", email: "email 2", password: "password" } 
      end.to change{User.count}.by(1)

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"]["full_name"]).to eq("user 2")
    end
  end

  describe 'api/v1/users/:id' do
    before(:all) do
      @user = User.create( full_name: "user 1", email: "email 1", password: "password")
    end

    it 'deletes a user' do
      expect do
        delete "/api/v1/users/#{@user.id}"
      end.to change { User.count }.by(-1)

      expect(response).to have_http_status(:no_content)
    end
  end
end
