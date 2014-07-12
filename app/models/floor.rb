class Floor < ActiveRecord::Base
  attr_accessible :childs_id, :decision, :monsters_id, :name, :objective, :parents_id, :size, :start_position
end
