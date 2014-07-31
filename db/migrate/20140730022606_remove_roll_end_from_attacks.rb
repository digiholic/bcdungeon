class RemoveRollEndFromAttacks < ActiveRecord::Migration
  def up
    remove_column :attacks, :roll_end
  end

  def down
    add_column :attacks, :roll_end, :integer
  end
end
