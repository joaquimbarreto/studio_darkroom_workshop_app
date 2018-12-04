class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
    @booking = Booking.create(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :time_slot, :room_id)
  end

end
