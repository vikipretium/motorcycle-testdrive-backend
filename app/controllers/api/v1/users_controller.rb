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

  def destroy
    @user.destroy
    render json: { status: 'SUCCESS', message: 'User deleted', data: @user }, status: :ok
  end

  def show
    if @user
      render json: { status: 'SUCCESS', message: 'User loaded', data: @user }, status: :ok
    else
      render json: { status: 'ERROR', message: 'User not loaded', data: @user.errors }, status: :unprocessable_entity
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'SUCCESS', message: 'User saved', data: user }, status: :ok
    else
      render json: { status: 'ERROR', message: 'user has not been saved try again', data: user.errors },
             status: :unprocessable_entity
    end
  end

  def update; end

  private

  def user_params
    params.permit(:full_name, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
