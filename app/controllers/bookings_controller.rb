class BookingsController < ApplicationController

  def new
    # now = Date.today
    # am_time_slots = (now .. now>>6).map{ |day| day.strftime("09:00-13:00 %b %-e %Y")}
    # pm_time_slots = (now .. now>>6).map{ |day| day.strftime("13:00-18:00 %b %-e %Y")}
    # @time_slots = am_time_slots + pm_time_slots
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
