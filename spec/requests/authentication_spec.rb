require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    let(:user) {User.create(full_name: 'John', email: 'john@gmail.com', password: '123456')}

    it 'should authenticate the client' do
      post '/api/v1/authenticate', params: { email: "david@gmail.com", password: "password1"}
      expect(response).to have_http_status(:created)
      expect(response.body).to include('token')
    end

    it 'should return error if invalid email' do
      post '/api/v1/authenticate', params: { password: "password1"}

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include('error')
    end

    it 'should return error if invalid password' do
      post '/api/v1/authenticate', params: { email: "david@gmail.com" }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include('error')
    end


  end
end