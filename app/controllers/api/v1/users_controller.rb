class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index 
    users = User.all
    if users
      render json: { status: 'SUCCESS', message: 'Users loaded', data: users }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Users not loaded', data: users.errors }, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :phone_number)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
