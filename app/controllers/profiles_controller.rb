class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @bookings = Booking.all
    @dimensions = Dimension.all
  end
end
