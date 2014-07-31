class FloorMonster < ActiveRecord::Base
  belongs_to :monster
  belongs_to :floor

  attr_accessible :floor_id, :monster_id, :position
end
