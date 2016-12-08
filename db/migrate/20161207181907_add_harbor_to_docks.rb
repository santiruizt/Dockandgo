class AddHarborToDocks < ActiveRecord::Migration[5.0]
  def change
    add_reference :docks, :harbor, foreign_key: true
  end
end
