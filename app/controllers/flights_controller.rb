class FlightsController < ApplicationController
  before_action :set_flight, only: %i[show destroy]
  before_action :set_airplane, only: %i[create update]
  
  # GET /flights
  def index
    @flights = Flight.all

    render json: @flights
  end

  # GET /flights/1
  def show
    render json: @flight, methods: [:seats, :available_seats]
  end

  # POST /flights
  def create
    @flight = @airplane.flights.new(flight_params)

    if @flight.save
      render json: @flight, status: :created, location: @flight
    else
      render json: @flight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flights/1
  def update
    @flight = @airplane.flights.find(params[:id])

    if @flight.update(flight_params)
      render json: @flight
    else
      render json: @flight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flights/1
  def destroy
    @flight.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end

  def set_airplane
    @airplane = Airplane.find(flight_params[:airplane_id])
  end

  # Only allow a list of trusted parameters through.
  def flight_params
    params.require(:flight).permit(:from, :to, :departure, :arrival, :airplane_id)
  end
end
