# frozen_string_literal: true

# the passenger
class Passenger < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validate :seats_available_on_flight

  belongs_to :flight

  def seats_available_on_flight
    return if flight.nil?

    errors.add(:firstname, 'no space available in the flight') if flight.available_seats.zero?
  end
end
