class PhotographersController < ApplicationController

  def show
    authorized_for(params[:id])
    @photographer = Photographer.find(params[:id])
    @bookings = @photographer.bookings
  end

end
