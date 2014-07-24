class Floor < ActiveRecord::Base
  belongs_to :dungeon
    
  attr_accessible :childs_id, :decision, :monsters_id, :name, :objective, :parents_id, :size, :start_position, :dungeon_id
end
