class BookingsController < ApplicationController

before_action :find_booking, only: [:edit, :update, :destroy]
before_action :find_photographers, only: [:new, :edit]

  def new
    @studio = Studio.find(params[:studio_id])
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @room = Room.find(params[:room_id])
    booking = Booking.new(booking_params)
    booking.photographer_id = session[:photographer_id]
    if booking.valid?
      booking.save
      redirect_to booking.photographer
    else
      flash[:errors] = booking.errors.full_messages
      redirect_to "/studios/#{@studio.id}/rooms/#{@room.id}/bookings/new"
    end
  end

  def edit
  end

  def update
    @booking.update(update_booking_params)
    if @booking.valid?
      redirect_to @booking.photographer
    else
      flash[:errors] = @booking.errors.full_messages
      redirect_to edit_booking_path(@booking)
    end
  end

  def destroy
    photographer = @booking.photographer
    @booking.destroy
    redirect_to photographer_path(photographer)
  end

  private

  def booking_params
    params.require(:booking).permit(:photographer_id, :date).merge({room_id: params[:room_id]})
  end

  def update_booking_params
    params.require(:booking).permit(:date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_photographers
    @photographers = Photographer.all
  end

end
