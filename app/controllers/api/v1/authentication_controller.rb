class Api::V1::AuthenticationController < ApplicationController
  class AuthenticationError < StandardError; end

  rescue_from ActionController::ParameterMissing, with: :parameter_missing
  rescue_from AuthenticationError, with: :handle_unauthenticated

  def create
    user = User.find_by(email: params.require(:email))
    raise AuthenticationError unless user.authenticate(params.require(:password))

    token = AuthenticationTokenService.call(user.id)

    if token
      render json: { data: token }, status: :created
    else
      render json: { error: 'Could not create token' }, status: :unprocessable_entity
    end
  end

  def token_validation
    # rubocop:disable Style/RedundantArgument: Argument
    token = request.headers['Authorization'].split(' ').last
    # rubocop:enable Style/RedundantArgument: Argument
    user_id = AuthenticationTokenService.decode(token)
    user = User.find(user_id)

    render json: { status: 'authorized', data: user }, status: :ok
  end

  private

  def user
    @user ||= User.find_by(email: params.require(:email))
  end

  def parameter_missing(err)
    render json: { error: err.message }, status: :unprocessable_entity
  end

  def handle_unauthenticated
    head :unauthorized
  end
end
