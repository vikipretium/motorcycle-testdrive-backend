class Api::V1::ReservationController < ApplicationController
  def index; 
  @reservations = Reservation.all
  render json: {status: "SUCCESS", message: "Loaded all reservation", data: @reservations }, status: :ok
  end

  def destroy;
  Reservation.find(params[:id]).destroy!
  head :no_content
  end

  def show; 
  @reservation = Reservation.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded reservation', data: @reservation }, status: :ok
  end

  def create; end

  def update; end
end
