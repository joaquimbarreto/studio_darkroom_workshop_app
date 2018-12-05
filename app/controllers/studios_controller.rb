class StudiosController < ApplicationController

  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
    @rooms = @studio.rooms
    @booking = Booking.new
  end

end
