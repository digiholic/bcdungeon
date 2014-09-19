class CreatePlayerInstances < ActiveRecord::Migration
  def change
    create_table :player_instances do |t|
      t.string :name
      t.integer :health
      t.integer :location
      t.integer :session_id

      t.timestamps
    end
  end
end
