require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    it 'should authenticate the client' do
      post '/api/v1/authenticate', params: { email: "david@gmail.com", password: "password1"}
      expect(response).to have_http_status(:created)
      expect(response.body).to include('token')
    end

    it 'should return error if invalid email' do
      post '/api/v1/authenticate', params: { password: "password1"}

      expect(response).to have_http_status(:unprocessable_entity)
    end

    it 'should return error if invalid password' do
      post '/api/v1/authenticate', params: { email: "david@gmail.com" }

      expect(response).to have_http_status(:unprocessable_entity)
    end


  end
end