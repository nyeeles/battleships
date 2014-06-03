class Ship

	def initialize
		@position = "",""
	end

	def place(position1, position2)
		@position = position1.to_s, position2.to_s
	end

	def position?
		@position
	end

	def fire(position)
		@fire_position = position.to_s
	end

	def hit?
		@position.include?(@fire_position)
	end
end