class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :ability
      t.integer :life
      t.integer :attacks_id
      t.integer :position

      t.timestamps
    end
  end
end
