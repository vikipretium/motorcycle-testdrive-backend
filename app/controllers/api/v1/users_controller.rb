class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

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
