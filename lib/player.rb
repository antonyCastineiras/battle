class Player
	attr_reader :name
	attr_accessor :hp
	def initialize(name)
		@name = name
		@hp = 100
	end

	def attack(player)
		player.damage(10)
	end

	def damage(number)
		self.hp -= number
	end

end
