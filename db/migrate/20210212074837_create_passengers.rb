class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :firstname
      t.string :lastname
      t.references :flight

      t.timestamps
    end
  end
end
