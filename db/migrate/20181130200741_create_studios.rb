class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :telephone_number
      t.string :email
      t.string :manager
      t.boolean :kitchen
      t.boolean :darkroom
      t.boolean :parking
      t.boolean :wi_fi
      t.string :underground_station

      t.timestamps
    end
  end
end
