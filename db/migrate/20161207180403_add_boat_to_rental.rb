class AddBoatToRental < ActiveRecord::Migration[5.0]
  def change
    add_reference :rentals, :boat, foreign_key: true
  end
end
