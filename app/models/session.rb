class Session < ActiveRecord::Base
  has_one :dungeon
  has_many :monster_instances

  attr_accessible :player, :dungeon_id, :current_floor
end
