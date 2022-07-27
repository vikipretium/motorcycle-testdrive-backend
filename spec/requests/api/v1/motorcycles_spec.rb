require 'swagger_helper'

RSpec.describe 'api/v1/motorcycles', type: :request do

  path '/api/v1/motorcycles' do

    get('list motorcycles') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :motorcycle, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            specification: { type: :string },
            price: { type: :integer },
            image: { type: :string }
          },
          required: %w[name specification price image]
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

  path '/api/v1/motorcycles/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show motorcycle') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'
        parameter name: :motorcycle, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            specification: { type: :string },
            price: { type: :integer },
            image: { type: :string }
          },
          required: %w[name specification price image]
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
