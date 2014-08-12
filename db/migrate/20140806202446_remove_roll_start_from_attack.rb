class RemoveRollStartFromAttack < ActiveRecord::Migration
  def up
    remove_column :attacks, :roll_start
  end

  def down
    add_column :attacks, :roll_start, :integer
  end
end
