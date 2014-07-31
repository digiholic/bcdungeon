class Junction < ActiveRecord::Base
  belongs_to :floor
  attr_accessible :destination_id, :floor_id
end
