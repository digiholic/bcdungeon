class AddImageToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :image_path, :string
  end
end
