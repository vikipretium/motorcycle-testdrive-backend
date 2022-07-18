class Api::V1::ReservationController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  def index
    reservations = User.find(params[:user_id]).reservations.map do |reservation|
      {
        id: reservation.id,
        motorcycle_id: reservation.motorcycle_id,
        city: reservation.city,
        date: reservation.date
      }
    end
    render json: { status: 'SUCCESS', message: 'Loaded all reservation', data: reservations }, status: :ok
  end

  def destroy
    Reservation.find(params[:id]).destroy!
    head :no_content
  end

  def show
    reservation = Reservation.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded reservation', data: reservation }, status: :ok
  end

  def create
    user = User.create!(user_params)
    motorcycle = Motorcycle.create!(motorcycle_params)
    reservation = Reservation.new(reservation_params.merge(user_id: user.id),
                                  reservation_params.merge(motorcycle_id: motorcycle.id))
    if reservation.save
      render json: { status: 'SUCCESS', message: 'reservation save', data: reservation }, status: :ok
    else
      render json: { status: 'ERROR', message: 'reservation is not saved', data: reservation.errors },
             status: :unprocessable_entity
    end
  end

  def update
    reservation = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      render json: { status: 'SUCCESS', message: 'reservation update', data: reservation }, status: :ok
    else
      render json: { status: 'ERROR', message: 'reservation is not updated', data: reservation.errors },
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :image, :specification, :price)
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :motorcycle_id, :city, :date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
