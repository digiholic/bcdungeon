class CreateMonsterInstances < ActiveRecord::Migration
  def change
    create_table :monster_instances do |t|
      t.string :name
      t.integer :health
      t.integer :location

      t.timestamps
    end
  end
end
