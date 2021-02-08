# frozen_string_literal: true

class Airplane < ApplicationRecord
  validates :model, presence: true
  validates :number, presence: true
  validates :seats, presence: true, numericality: { only_integer: true, greater_than: 0}
end
