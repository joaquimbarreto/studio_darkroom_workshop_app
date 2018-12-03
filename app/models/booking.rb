class Booking < ApplicationRecord
  belongs_to :studio
  belongs_to :photographer
  has_many :photo_equipment_bookings
end
