class Monster < ActiveRecord::Base
  attr_accessible :ability, :attacks_id, :life, :name, :position
end
