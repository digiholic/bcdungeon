module SessionsHelper

  def clear_floor(session, toFloor)
    MonsterInstance.where(session_id: session.id).destroy_all
    letter = '@'
    FloorMonster.where(floor_id: toFloor.id).each do |fMonster|
      monster = Monster.find(fMonster.monster_id)
      mi = MonsterInstance.new
      mi.name = monster.name + ' ' + letter.next!
      mi.health = monster.life
      mi.location = fMonster.position
      mi.session_id = session.id
      mi.save
    end
  end

end
