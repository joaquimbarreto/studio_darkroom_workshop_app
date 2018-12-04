class CreatePhotoEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_equipments do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :photo_path

      t.timestamps
    end
  end
end
