class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.integer :photographer_id
      t.string :time_slot
      t.date :date

      t.timestamps
    end
  end
end
