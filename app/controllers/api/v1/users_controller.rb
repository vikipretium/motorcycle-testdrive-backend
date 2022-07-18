class UserController < ApplicationController
  def index; end

  def destroy; end

  def show; end

  def create
    user = User.new(user_params)
    if user.save
      render json: { message: 'User saved', data: user }, status: :ok
    else
      render json: { status: 'ERROR', message: 'user has not been saved try again', data: user.errors },
             status: :unprocessable_entity
    end
  end

  def update; end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :phone_number)
  end
end
