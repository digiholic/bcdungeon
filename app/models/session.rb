class Session < ActiveRecord::Base
  has_one :dungeon

  attr_accessible :player, :dungeon_id, :current_floor
end
