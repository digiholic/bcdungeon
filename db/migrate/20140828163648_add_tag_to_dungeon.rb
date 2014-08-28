class AddTagToDungeon < ActiveRecord::Migration
  def change
    add_column :dungeons, :tag, :boolean
  end
end
