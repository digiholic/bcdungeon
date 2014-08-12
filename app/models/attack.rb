class Attack < ActiveRecord::Base
  attr_accessible :ability, :name, :power, :priority, :range_end, :range_start, :monster_id, :chance
end
