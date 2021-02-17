# frozen_string_literal: true

# flights table
class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :from
      t.string :to
      t.datetime :departure
      t.datetime :arrival
      t.references :airplane

      t.timestamps
    end
  end
end
