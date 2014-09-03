class AddDungeonIdToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :dungeon_id, :integer
  end
end
