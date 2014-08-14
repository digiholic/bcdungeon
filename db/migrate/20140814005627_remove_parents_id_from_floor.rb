class RemoveParentsIdFromFloor < ActiveRecord::Migration
  def up
    remove_column :floors, :parents_id
  end

  def down
    add_column :floors, :parents_id, :integer
  end
end
