module Api 
module V1
  class MotorcyclesController < ApplicationController
    def index
      @motorcycles = Motorcycle.all
      render json: {status: "SUCCESS", message: "Loaded All Motorcycles", data: @motorcycles}, status: :ok
    end

    def show
      
    end
  end
  
end
end

