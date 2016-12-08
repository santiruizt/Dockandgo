class CreateDocks < ActiveRecord::Migration[5.0]
  def change
    create_table :docks do |t|
      t.decimal :size
      t.decimal :price
      t.string :dock_plate

      t.timestamps
    end
  end
end
