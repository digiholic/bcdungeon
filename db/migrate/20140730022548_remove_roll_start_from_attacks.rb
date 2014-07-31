class RemoveRollStartFromAttacks < ActiveRecord::Migration
  def up
    remove_column :attacks, :roll_Start
  end

  def down
    add_column :attacks, :roll_Start, :integer
  end
end
