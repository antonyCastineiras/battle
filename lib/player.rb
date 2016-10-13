class Player

  attr_reader :name, :hit_points
  attr_accessor :poison_count, :poisoned

  DEFAULT_HITPOINTS = 50

  def initialize(name, hit_points = DEFAULT_HITPOINTS)
    @name = name
    @hit_points = hit_points
    @poisoned = false
    @poison_count = 0
  end

  def receive_damage(n)
    @hit_points -= n
  end

  def dead?
    @hit_points <= 0
  end

end
