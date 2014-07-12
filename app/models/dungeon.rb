class Dungeon < ActiveRecord::Base
  attr_accessible :description, :epilogue, :floors_ids, :gold, :name, :players, :prologue
end
