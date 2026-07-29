class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [ airport.code, airport.id ] }

    available_dates = Flight.order(:start_datetime).pluck(:start_datetime).map { |datetime| datetime.to_date }.uniq

    @date_options = available_dates.map do |date|
      [ date.strftime("%A, %d %B %Y"), date ]
    end

    @search_executed = params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:date].present?

    if @search_executed

      @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id])

      selected_date = Date.parse(params[:date])

      @flights = @flights.where(start_datetime: selected_date.all_day)

    end
  end
end
