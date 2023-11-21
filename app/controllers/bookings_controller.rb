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
    start_date, end_date = params[:booking][:start_date].split("to")
    @dimension = Dimension.find(params[:dimension_id])
    @booking = Booking.new(bookings_params)
    @booking.start_date = start_date
    @booking.end_date = end_date
    @booking.dimension = @dimension
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking.id), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @bookings = Booking.all
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
