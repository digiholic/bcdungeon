class AddDescriptionToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :description, :string
  end
end
