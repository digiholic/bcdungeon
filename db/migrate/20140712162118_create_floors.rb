class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :name
      t.string :objective
      t.integer :size
      t.integer :parents_id
      t.integer :childs_id
      t.integer :monsters_id
      t.integer :start_position
      t.boolean :decision

      t.timestamps
    end
  end
end
