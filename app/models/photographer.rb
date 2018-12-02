class Photographer < ApplicationRecord
  has_many :bookings
  has_many :studios, through: :bookings
# has_many :photo_equipments, through: :studios
# has_many :rooms, through: :studios

  def name
    "#{self.first_name} #{self.last_name}" 
  end

end
