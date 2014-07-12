class Monster < ActiveRecord::Base
  has_many :attacks
  attr_accessible :ability, :attacks_id, :life, :name, :position
end
