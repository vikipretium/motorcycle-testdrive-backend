require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    it 'should authenticate the client' do
      post '/api/v1/authenticate', params: { email: ""}
    end
  end
end