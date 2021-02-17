# frozen_string_literal: true

# the user
class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :password, presence: true

  has_many :passengers
end
