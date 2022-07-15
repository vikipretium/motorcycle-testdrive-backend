class Api::V1::ReservationController < ApplicationController
  def index; 
  @reservations = Reservation.all
  render json: {status: "SUCCESS", message: "Loaded all reservation", data: @reservations }, status: :ok
  end

  def destroy; end

  def show; end

  def create; end

  def update; end
end
