class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :photographer
  has_one :studio, through: :room
  # has_many :photo_equipment_bookings

end
