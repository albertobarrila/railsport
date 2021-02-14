class Passenger < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validate :seats_available

  belongs_to :flight

  def seats_available
    return if flight.nil?
    errors.add(:firstname, 'no space available in the flight') if flight.available_seats.zero?
  end
end
