class Attack < ActiveRecord::Base
  attr_accessible :ability, :name, :power, :priority, :range_end, :range_start, :roll_end, :roll_start
end