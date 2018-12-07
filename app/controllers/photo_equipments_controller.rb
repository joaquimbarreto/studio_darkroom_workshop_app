class PhotoEquipmentsController < ApplicationController

  def show
    @photo_equipment = PhotoEquipment.find(params[:id])
  end

  def index
    @photo_equipments = PhotoEquipment.all
  end

end
