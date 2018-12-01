class PhotoEquipmentsController < ApplicationController

  def show
    @photo_equipment = PhotoEquipment.find(params[:id])
  end

end
