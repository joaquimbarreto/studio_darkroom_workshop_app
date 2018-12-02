class PhotographersController < ApplicationController

  def show
    @photographer = Photographer.find(params[:id])
  end
end
