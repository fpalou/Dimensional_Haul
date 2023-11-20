class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create  
    @booking = Booking.new(bookings_params)
    if @booking.save
      redirect_to booking_path, :notice => "Successfully created booking."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :perks, :confirmation, :guests, :users_id, :dimensions_id)
  end
end
