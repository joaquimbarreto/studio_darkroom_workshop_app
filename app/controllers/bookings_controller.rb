class BookingsController < ApplicationController

  def new
    @room = Room.find(params[:room_id])
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
    @photographers = Photographer.all
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to @booking.photographer
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :date, :room_id, :time_slot).merge({room_id: params[:room_id]})
  end

end
