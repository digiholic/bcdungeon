class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :name
      t.integer :roll_start
      t.integer :roll_end
      t.integer :range_start
      t.integer :range_end
      t.integer :power
      t.integer :priority
      t.string :ability

      t.timestamps
    end
  end
end
