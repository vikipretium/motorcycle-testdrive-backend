class Api::V1::AuthenticationController < ApplicationController
rescue_from ActionController::ParameterMissing, with: :parameter_missing
rescue_from AuthenticationError, with: :handle_unauthenticated

  def create
    p params.require(:password).inspect
    user = User.find_by(email: params.require(:email))
    token = AuthenticationTokenService.call(user.id)

    render json: { token: token }, status: :created
  end

  def parameter_missing(e)
    render json: { error: e.message }, status: :unprocessable_entity
  end
end