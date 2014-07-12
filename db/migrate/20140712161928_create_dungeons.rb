class CreateDungeons < ActiveRecord::Migration
  def change
    create_table :dungeons do |t|
      t.string :name
      t.string :description
      t.integer :players
      t.integer :gold
      t.integer :floors_ids
      t.string :prologue
      t.string :epilogue

      t.timestamps
    end
  end
end
