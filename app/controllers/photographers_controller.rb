class PhotographersController < ApplicationController

  def show
    authorized_for(params[:id])
    @photographer = Photographer.find(params[:id])
  end

end
