class AddUserToDocks < ActiveRecord::Migration[5.0]
  def change
    add_reference :docks, :user, foreign_key: true
  end
end
