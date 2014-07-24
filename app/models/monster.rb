class Monster < ActiveRecord::Base
  has_many :attacks
  attr_accessible :ability, :attacks_id, :life, :name, :position

  def self.getAllMonsterAttacks(monster)
    myAttacks = Attack.where(monster_id: monster.id)
  end

end
