class Player
	attr_reader :name
	attr_accessor :hp
	def initialize(name)
		@name = name
		@hp = 100
	end
end