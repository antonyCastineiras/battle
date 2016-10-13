require_relative 'player'

class Game

  attr_reader :player

  # def initialize(player = Player.new)
  #   @player = player
  # end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

end
