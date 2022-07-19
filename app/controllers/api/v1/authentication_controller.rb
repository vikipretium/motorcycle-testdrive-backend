class Api::V1::AuthenticationController < ApplicationController
  class AuthenticationError < StandardError; end
  rescue_from ActionController::ParameterMissing, with: :parameter_missing
  rescue_from AuthenticationError, with: :handle_unauthenticated

  def create
    user = User.find_by(email: params.require(:email))
    raise AuthenticationError unless user.authenticate(params.require(:password))

    token = AuthenticationTokenService.call(user.id)

    render json: { token: }, status: :created
  end

  def token_validation
    token = request.headers['Authorization']
    user = User.find(AuthenticationTokenService.decode(token)['user_id'])

    render json: { user: }, status: :success
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
