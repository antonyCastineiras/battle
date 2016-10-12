class Game
	def initialize(player_1,player_2)
		@player_1 = player_1
		@player_2 = player_2
		@current_player = @player_1
	end

	def player_1
		@player_1
	end

	def player_2
		@player_2
	end

	def attack(player)
		player.damage(10)
	end

	def current_player
		@current_player
	end

	def enemy_player
		players = [@player_1, @player_2]
		players.detect {|x| x != @current_player}
	end

	def switch_turn
		@current_player == player_1 ? @current_player = player_2 : @current_player = player_1
	end
end
