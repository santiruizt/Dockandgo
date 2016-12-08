class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.decimal :size
      t.string :boat_plate

      t.timestamps
    end
  end
end
