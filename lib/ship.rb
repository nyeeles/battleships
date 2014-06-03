class Ship

	def initialize
		@position = "",""
		@sunk = false
		@hit_counter = 0
	end

	def hit_counter
			@hit_counter += 1
	end

	def place(position1, position2)
		@position = (position1..position2).to_a.map{|el| el.to_s}
	end

	def position?
		@position
	end

	def fire(position)
		@fire_position = position.to_s
	end

	def hit?
		hit_counter if @position.include?(@fire_position)	
	end

	def sunk?
		hit_counter == length
		
	end

	def length
		bow = position?.first.to_i
		sturn = position?.last.to_i
		ship_length = (bow-sturn).abs + 1
	end
end