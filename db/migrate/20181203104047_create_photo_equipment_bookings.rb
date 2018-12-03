class CreatePhotoEquipmentBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_equipment_bookings do |t|
      t.integer :booking_id
      t.integer :photo_equipment_id

      t.timestamps
    end
  end
end
