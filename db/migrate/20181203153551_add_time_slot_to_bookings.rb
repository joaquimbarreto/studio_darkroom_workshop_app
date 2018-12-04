class AddTimeSlotToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :time_slot, :datetime
  end
end
