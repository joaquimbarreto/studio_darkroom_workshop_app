class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :studio_id
      t.string :photo_path

      t.timestamps
    end
  end
end
