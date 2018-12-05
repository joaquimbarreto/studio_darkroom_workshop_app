class BookingsController < ApplicationController

  def new
    @rooms = Room.all
    @photographers = Photographer.all
    @booking = Booking.new
  end

  def create
    @rooms = Room.all
    @photographers = Photographer.all
    @booking = Booking.create(booking_params)
    redirect_to @booking.photographer
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :date, :room_id, :time_slot)
  end

end
