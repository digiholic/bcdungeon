class MonsterInstance < ActiveRecord::Base
  attr_accessible :health, :location, :name
  belongs_to :monster
  belongs_to :session

end
