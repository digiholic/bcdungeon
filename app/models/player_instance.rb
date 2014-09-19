class PlayerInstance < ActiveRecord::Base
  attr_accessible :health, :location, :name, :session_id
  
  belongs_to :session
end
