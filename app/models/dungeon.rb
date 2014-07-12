class Dungeon < ActiveRecord::Base
  has_many :floors, dependent: :destroy

  attr_accessible :description, :epilogue, :floors_ids, :gold, :name, :players, :prologue
end
