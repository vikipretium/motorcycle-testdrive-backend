class Api::V1::ReservationController < ApplicationController
  def index; 
  reservations = Reservation.all
  render json: {status: "SUCCESS", message: "Loaded all reservation", data: reservations }, status: :ok
  end

  def destroy;
  Reservation.find(params[:id]).destroy!
  head :no_content
  end

  def show; 
  reservation = Reservation.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded reservation', data: reservation }, status: :ok
  end

  def create;
  user = User.create!(user_params)
  motorcycle = Motorcycle.create!(motorcycle_params)
  reservation = Reservation.new(reservation_params) 
  if reservation.save
    render json: {status: 'SUCCESS', message: 'reservation save', data: reservation }, status: :ok
  else
    render json: {status: 'ERROR', message: 'reservation is not saved', data: reservation.errors }, status: :unprocessable_entity
  end

  def update; end
end
