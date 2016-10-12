class Game

	def self.create(player1,player2)
		@instance = Game.new(player1,player2)
	end

	def self.instance
		@instance
	end

	attr_accessor :message
	def initialize(player_1,player_2)
		@player_1 = player_1
		@player_2 = player_2
		@current_player = @player_1
		@message = ""
	end

	def player_1
		@player_1
	end

	def player_2
		@player_2
	end


	def update_message(string)
		@message = string
	end

	def attack(player)
		player.damage(10)
		if player.dead?
			 update_message('Game over')
		else
			 update_message("#{current_player.name} attacked #{enemy_player.name}")
		end
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
