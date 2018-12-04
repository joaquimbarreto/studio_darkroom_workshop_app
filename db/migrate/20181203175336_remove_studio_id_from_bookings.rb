class RemoveStudioIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :studio_id, :integer
  end
end
