class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :player

      t.timestamps
    end
  end
end
