class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :studio_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
