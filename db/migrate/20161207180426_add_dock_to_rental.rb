class AddDockToRental < ActiveRecord::Migration[5.0]
  def change
    add_reference :rentals, :dock, foreign_key: true
  end
end
