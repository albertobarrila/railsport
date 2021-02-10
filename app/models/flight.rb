# frozen_string_literal: true

# the flight
class Flight < ApplicationRecord
  validates :from, presence: true
  validates :to, presence: true
  validates :departure, presence: true
  validates :arrival, presence: true
  validate :departure_is_in_the_future
  validate :arrival_is_in_the_future

  has_one :airplane

  def seats
    airplane.seats
  end

  private

  def departure_is_in_the_future
    return if departure.nil?

    errors.add(:departure, 'must be in the future') if departure < DateTime.now
  end

  def arrival_is_in_the_future
    return if arrival.nil?

    errors.add(:arrival, 'must be in the future') if arrival < DateTime.now
  end
end
