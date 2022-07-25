require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:all) do 
    @user = User.create!([{ full_name: "user 1", email: "email 1", password: "password 1" }, { full_name: "user 2", email: "email 2", password: "password 2" }])
  end

  describe 'ap1/v1/users' do
    it 'returns all users' do
      get '/api/v1/users'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"].size).to eq(2)
    end
  end
end
