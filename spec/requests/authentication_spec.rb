require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    it 'should authenticate the client' do
      post '/api/v1/authenticate', params: { email: "david@gmail.com", password: "password1"}
      expect(response).to have_http_status(:created)
      expect(response_body).to eq('token')
    end
  end
end