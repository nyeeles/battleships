class Ship

	def initialize
		@position = ""
	end

	def place(position)
		@position = position.to_s
	end

	def position?
		@position
	end

	def hit?
		@fire_position == @position
	end

	def fire(position)
		@fire_position = position.to_s
	end

end