class PassengersController < ApplicationController
  before_action :set_flight
  before_action :set_passenger, only: %i[show update destroy]

  # GET /passengers
  def index
    @passengers = @flight.passengers

    render json: @passengers
  end

  # GET /passengers/1
  def show
    render json: @passenger
  end

  # POST /passengers
  def create
    @passenger = @flight.passengers.new(passenger_params)

    if @passenger.save
      render json: @passenger, status: :created, location: flight_passenger_url(@flight, @passenger)
    else
      render json: @passenger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /passengers/1
  def update
    if @passenger.update(passenger_params)
      render json: @passenger
    else
      render json: @passenger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /passengers/1
  def destroy
    @passenger.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def set_passenger
    @passenger = @flight.passengers.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def passenger_params
    params.require(:passenger).permit(:firstname, :lastname)
  end
end
