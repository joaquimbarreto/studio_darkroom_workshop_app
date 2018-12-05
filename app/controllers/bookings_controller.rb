class BookingsController < ApplicationController

  def new
    @room = Room.find(params[:room_id])
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
    @photographers = Photographer.all
  end

  def create
    booking = Booking.new(booking_params)
    if booking.valid?
      booking.save
      redirect_to booking.photographer
    else
      flash[:errors] = booking.errors.full_messages
      redirect_to '/'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :date).merge({room_id: params[:room_id]})
  end

end
