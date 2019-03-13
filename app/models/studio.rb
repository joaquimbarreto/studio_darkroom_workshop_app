class Studio < ApplicationRecord
  has_many :rooms
  has_many :bookings
  has_many :photographers, through: :bookings
end
