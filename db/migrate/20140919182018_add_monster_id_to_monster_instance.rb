class AddMonsterIdToMonsterInstance < ActiveRecord::Migration
  def change
    add_column :monster_instances, :monster_id, :integer
  end
end
