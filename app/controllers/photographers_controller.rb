class PhotographersController < ApplicationController

  def show
    #authorized_for(parpams[:id])
    @photographer = Photographer.find(params[:id])
  end
end
