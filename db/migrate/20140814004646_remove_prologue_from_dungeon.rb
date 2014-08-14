class RemovePrologueFromDungeon < ActiveRecord::Migration
  def up
    remove_column :dungeons, :prologue
  end

  def down
    add_column :dungeons, :prologue, :string
  end
end
