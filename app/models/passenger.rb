# frozen_string_literal: true

# the passenger
class Passenger < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validate :seats_available_on_flight
  validate :flight_in_the_future

  belongs_to :flight
  belongs_to :user

  def seats_available_on_flight
    return if flight.nil?

    errors.add(:firstname, 'no space available in the flight') if flight.available_seats.zero?
  end

  def flight_in_the_future
    return if flight.nil?

    errors.add(:firstname, 'only future flight can be booked') unless flight.in_the_future?
  end
end
