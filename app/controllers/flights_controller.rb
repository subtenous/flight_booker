class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [ airport.code, airport.id ] }

    if params[:departure_airport_id].present?
      @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id])

      selected_date = Date.parse(params[:date])

      @flights = Flight.where(start_datetime: selected_date.all_day)
    end




  end
end
