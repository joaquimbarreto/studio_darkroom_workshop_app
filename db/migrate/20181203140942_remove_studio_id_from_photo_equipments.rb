class RemoveStudioIdFromPhotoEquipments < ActiveRecord::Migration[5.2]
  def change
    remove_column :photo_equipments, :studio_id, :integer
  end
end
