require 'player'
require 'grid'

class Game

	def initialize
	@playas = [playa_1 = Playa.new, playa_2 = Playa.new]	
	end

	attr_reader :playas
end