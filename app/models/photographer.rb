class Photographer < ApplicationRecord
  has_many :bookings
  has_many :studios, through: :bookings
# has_many :photo_equipments, through: :bookings
# has_many :rooms, through: :studios
  validates :username, uniqueness: true, presence: true
  has_secure_password
 
  def name
    "#{self.first_name} #{self.last_name}"
  end

end
