require_relative 'player'
require_relative 'grid'

class Game

	def initialize 
		@playa_1 = Playa.new
		@playa_2 = Playa.new
		@p1_primary_grid = Grid.new
		@p1_tracker_grid = Grid.new
		@p2_primary_grid = Grid.new
		@p2_tracker_grid = Grid.new
	end
end