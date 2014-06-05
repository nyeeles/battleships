require_relative 'player'
require_relative 'grid'

class Game

	def initialize 
		@player_1 = Player.new
		@player_2 = Player.new
		@p1_primary_grid = Grid.new
		@p1_tracker_grid = Grid.new
		@p2_primary_grid = Grid.new
		@p2_tracker_grid = Grid.new
	end

	attr_accessor :player_1
	attr_accessor :player_2
	attr_accessor :p1_primary_grid
	attr_accessor :p1_tracker_grid
	attr_accessor :p2_primary_grid
	attr_accessor :p2_tracker_grid

end