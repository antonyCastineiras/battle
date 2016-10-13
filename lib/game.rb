require_relative 'player'

class Game

  attr_reader :player, :current_player

  # def initialize(player = Player.new)
  #   @player = player
  # end
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    enemy.receive_damage(rand(5..10))
  end

  def enemy
    @players.detect {|player| player != @current_player}
  end

  def switch_turn
    @current_player = enemy
  end
end
