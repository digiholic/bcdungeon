class Dungeon < ActiveRecord::Base
  has_many :floors, dependent: :destroy
  
  validates_presence_of :name, :gold, :players

  def self.getAllDungeonFloors(dungeon)
    myFloors = Floor.where(dungeon_id: dungeon.id)
  end

  attr_accessible :description, :epilogue, :floors_ids, :gold, :name, :players, :prologue, :tag
end
