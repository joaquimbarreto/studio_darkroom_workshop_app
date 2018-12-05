class BookingsController < ApplicationController

before_action :find_booking, only: [:edit, :update, :destroy]
before_action :find_photographer, only: [:edit, :update, :destroy]


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

  def destroy
    @booking.destroy
    redirect_to photographer_path(@photographer)
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :date).merge({room_id: params[:room_id]})
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_photographer
    @photographer = Photographer.find(params[:id])
  end

end
