class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :studio_id
      t.string :dimensions
      t.text :description
      t.string :photo_path1
      t.string :photo_path2

      t.timestamps
    end
  end
end
