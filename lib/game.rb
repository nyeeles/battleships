require_relative 'player'
require_relative 'grid'
require_relative 'ship'

class Game

	def initialize 
		@player_1 = Player.new
		@player_2 = Player.new
		@p1_primary_grid = Grid.new
		@p1_tracker_grid = Grid.new
		@p2_primary_grid = Grid.new
		@p2_tracker_grid = Grid.new
		@patrol_boat = Ship.new(2)
		@destroyer = Ship.new(3)
		@battleship = Ship.new(4)
	end

	attr_accessor :player_1
	attr_accessor :player_2
	attr_accessor :p1_primary_grid
	attr_accessor :p1_tracker_grid
	attr_accessor :p2_primary_grid
	attr_accessor :p2_tracker_grid
	attr_accessor :patrol_boat
	attr_accessor :destroyer
	attr_accessor :battleship

end