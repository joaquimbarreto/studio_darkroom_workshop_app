class Room < ApplicationRecord
  belongs_to :studio
  has_many :bookings
end
