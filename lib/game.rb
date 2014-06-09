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
		# @patrol_boat = Ship.new(2)
		# @destroyer = Ship.new(3)
		# @battleship = Ship.new(4)
		patrol = Patrol.new
		destroyer = Destroyer.new
		carrier = Carrier.new
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

# player 1, place your patrol_boat
# show grid
# gets chomp 
# places patrol boat
# shows it on grid
# player 1, place your destroyer etc


	def place_ships_message_to(player)
		puts "#{player}, place your ships now"
		coordinate = gets.chomp
		puts "Horizontal or vertical?"
		orientation = gets.chomp
		if orientation == 'vertical'
			p1_primary_grid.insert_vertical(patrol_boat, coordinate)
		else
			p1_primary_grid.insert_horizontal(patrol_boat, coordinate)
		end
		p1_primary_grid.show_as_grid
	end	

	def your_turn_to_fire(player)
		puts "#{player}, you're up! Take a shot"
	end
end