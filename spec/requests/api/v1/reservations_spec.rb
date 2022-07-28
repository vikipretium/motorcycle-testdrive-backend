require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  path '/api/v1/users/{user_id}/reservations' do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'

    get('list reservations') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        consumes 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            user_id: { type: :string },
            motorcycle_id: { type: :string },
            city: { type: :integer },
            date: { type: :string }
          },
          required: %w[user_id motorcycle_id city date]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create reservation') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        consumes 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            user_id: { type: :string },
            motorcycle_id: { type: :string },
            city: { type: :integer },
            date: { type: :string }
          },
          required: %w[user_id motorcycle_id city date]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/users/{user_id}/reservations/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show reservation') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }
        consumes 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            user_id: { type: :string },
            motorcycle_id: { type: :string },
            city: { type: :integer },
            date: { type: :string }
          },
          required: %w[user_id motorcycle_id city date]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete reservation') do
      response(200, 'successful') do
        let(:user_id) { '123' }
        let(:id) { '123' }
        consumes 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            user_id: { type: :string },
            motorcycle_id: { type: :string },
            city: { type: :integer },
            date: { type: :string }
          },
          required: %w[user_id motorcycle_id city date]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
