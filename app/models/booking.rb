class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :photographer
  has_one :studio, through: :room
  # has_many :photo_equipment_bookings

  validates :date, :time_slot, presence: true
  validate :future_date

  def future_date
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

end
