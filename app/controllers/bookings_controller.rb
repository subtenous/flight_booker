class BookingsController < ApplicationController
  def show 
    @booking = Booking.find(params[:id])
  end
  
  def new 
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build 

    params[:passengers].to_i.times do
      @booking.passengers.build 
    end
  end

  def create 
    @booking = Booking.new(booking_params)

    if @booking.save 
      redirect_to @booking
    else
      @flight = @booking.flight
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.expect(booking: [:flight_id, passengers_attributes: [[:name, :email]]])
  end
end
