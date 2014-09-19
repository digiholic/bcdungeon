class AddSessionIdToMonsterInstance < ActiveRecord::Migration
  def change
    add_column :monster_instances, :session_id, :integer
  end
end
