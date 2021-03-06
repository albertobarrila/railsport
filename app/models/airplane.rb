# frozen_string_literal: true

# the airplane
class Airplane < ApplicationRecord
  validates :model, presence: true
  validates :number, presence: true
  validates :seats, presence: true, numericality: { only_integer: true, greater_than: 0 }

  has_many :flights
end
