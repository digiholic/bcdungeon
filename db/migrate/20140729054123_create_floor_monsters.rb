class CreateFloorMonsters < ActiveRecord::Migration
  def change
    create_table :floor_monsters do |t|
      t.integer :floor_id
      t.integer :monster_id
      t.integer :position

      t.timestamps
    end
  end
end
