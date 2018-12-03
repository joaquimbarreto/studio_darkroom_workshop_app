class PhotoEquipmentBooking < ApplicationRecord
  belongs_to :photo_equipment
  belongs_to :booking
end
