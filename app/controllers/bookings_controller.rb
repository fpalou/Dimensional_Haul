class BookingsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @bookings = Booking.all
  end

  def new
    @dimension = Dimension.find(params[:dimension_id])
    @booking = Booking.new
  end

  def create
    @dimension = Dimension.find(params[:dimension_id])
    @booking = Booking.new(bookings_params)
    @booking.dimension = @dimension
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path, :notice => "Successfully created booking."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy
    redirect_to dimension_path, :notice => "Successfully destroyed booking."
  end

  private
  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :perks, :guests)
  end
end
