require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    let(:user) { User.create(full_name: 'John', email: 'john@gmail.com', password: '123456') }

    it 'should authenticate the client' do
      post '/api/v1/login', params: { email: user.email, password: user.password }
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)["data"]).to eq('eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.DiPWrOKsx3sPeVClrm_j07XNdSYHgBa3Qctosdxax3w')
    end

    it 'should return error if invalid email' do
      post '/api/v1/login', params: { password: user.password }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include('error')
    end

    it 'should return error if invalid password' do
      post '/api/v1/login', params: { email: user.email }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include('error')
    end

    it 'should return error if invalid email and password' do
      post '/api/v1/login', params: { email: user.email, password: 'invalid' }

      expect(response).to have_http_status(:unauthorized)
    end

    # it 'should return error if invalid token' do
    #   get '/api/v1/authenticate', params: { email: user.email, password: user.password },
    #   headers: {"Authorization" => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiMTQifQ.-4Hw8wX3yfZFm-L4_YwCnEIMY0lu1TtOokZ-rvdWujg"}
    #   expect(response).to have_http_status(:unauthorized)
    # end
  end
end
