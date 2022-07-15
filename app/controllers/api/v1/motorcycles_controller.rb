class Api::V1::MotorcyclesController < ApplicationController
  def index
    motorcycles = Motorcycle.all
    render json: { status: 'SUCCESS', message: 'Loaded All Motorcycles', data: motorcycles }, status: :ok
  end

  def show
    motorcycle = Motorcycle.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded Motorcycle', data: motorcycle }, status: :ok
  end
end
