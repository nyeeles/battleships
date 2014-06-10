require_relative 'grid'

class Player

	def initialize(name)
		@name = name
		@primary = PrimaryGrid.new
		@tracking = TrackingGrid.new
	end

	attr_reader :name
	attr_reader :primary
	attr_reader :tracking
end