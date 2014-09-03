class AddCurrentFloorToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :current_floor, :integer
  end
end
