class RemovePositionFromMonster < ActiveRecord::Migration
  def up
    remove_column :monsters, :position
  end

  def down
    add_column :monsters, :position, :integer
  end
end
