class Player

  attr_reader :name, :hit_points

  DEFAULT_HITPOINTS = 50

  def initialize(name, hit_points = DEFAULT_HITPOINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage(n)
    @hit_points -= n
  end

  def dead?
    @hit_points <= 0
  end

end
