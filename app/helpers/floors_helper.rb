module FloorsHelper

  def get_monsters(floor)
    FloorMonster.where(floor_id: floor.id)
  end

  def get_outward_junctions(floor)
    Junction.where(floor_id: floor.id)
  end

  def get_inward_junctions(floor)
    Junction.where(destination_id: floor.id)
  end

end
