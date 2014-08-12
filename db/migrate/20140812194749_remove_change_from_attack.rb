class RemoveChangeFromAttack < ActiveRecord::Migration
  def up
    remove_column :attacks, :change
  end

  def down
    add_column :attacks, :change, :integer
  end
end
