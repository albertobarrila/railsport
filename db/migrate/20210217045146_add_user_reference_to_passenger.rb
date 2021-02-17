# frozen_string_literal: true

# add missing reference to user in passenger
class AddUserReferenceToPassenger < ActiveRecord::Migration[6.1]
  def change
    add_reference :passengers, :user
  end
end
