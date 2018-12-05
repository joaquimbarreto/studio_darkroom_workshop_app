class Studio < ApplicationRecord
  has_many :rooms
  has_many :bookings, through: :rooms
  has_many :photographers, through: :bookings
end
