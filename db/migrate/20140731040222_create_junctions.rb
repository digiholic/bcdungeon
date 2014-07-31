class CreateJunctions < ActiveRecord::Migration
  def change
    create_table :junctions do |t|
      t.integer :floor_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
