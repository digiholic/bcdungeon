class AddChanceToAttack < ActiveRecord::Migration
  def change
    add_column :attacks, :chance, :integer
  end
end
