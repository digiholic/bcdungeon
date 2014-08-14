class RemoveChildsIdFromFloor < ActiveRecord::Migration
  def up
    remove_column :floors, :childs_id
  end

  def down
    add_column :floors, :childs_id, :integer
  end
end
