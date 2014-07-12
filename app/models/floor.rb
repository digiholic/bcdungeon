class Floor < ActiveRecord::Base
  belongs_to :dungeon
  has_many :monsters
  attr_accessible :childs_id, :decision, :monsters_id, :name, :objective, :parents_id, :size, :start_position
end
