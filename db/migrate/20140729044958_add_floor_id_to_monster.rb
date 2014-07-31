class AddFloorIdToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :floor_id, :integer
  end
end
