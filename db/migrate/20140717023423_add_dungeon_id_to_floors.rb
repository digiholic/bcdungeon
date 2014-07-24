class AddDungeonIdToFloors < ActiveRecord::Migration
  def change
    add_column :floors, :dungeon_id, :integer
  end
end
