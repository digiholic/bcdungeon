class Floor < ActiveRecord::Base
  has_many :floor_monsters
  has_many :monsters, through: :floor_monsters
  has_many :junctions

  belongs_to :dungeon

  attr_accessible :childs_id, :decision, :monsters_id, :monsters, :name, :objective, :parents_id, :size, :start_position, :dungeon_id
end
