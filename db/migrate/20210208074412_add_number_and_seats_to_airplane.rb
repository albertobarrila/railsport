# frozen_string_literal: true

# add number and seats field to airplanes
class AddNumberAndSeatsToAirplane < ActiveRecord::Migration[6.1]
  def change
    add_column :airplanes, :number, :string
    add_column :airplanes, :seats, :integer
  end
end
