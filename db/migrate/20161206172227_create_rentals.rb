class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      

      t.datetime :from
      t.datetime :until
      t.boolean :availability

      t.timestamps
    end
  end
end
