class AddMonsterIdToAttacks < ActiveRecord::Migration
  def change
    add_column :attacks, :monster_id, :integer
  end
end
