require 'ship'
require 'grid'

describe 'Ship' do
	let (:ship) { Ship.new }
	let (:grid) { Grid.new }
	let (:patrol_boat) { Ship.new(2) }

		it 'should not be hit when initialized' do
			expect(ship.hit?).to_not be_true
		end

		it 'can be hit' do
			ship.hit!
			expect(ship.hit?).to be_true
		end

		it 'has a default length of 1 square' do
			expect(ship.length?).to eq 1
		end

		it 'can be longer than one square, vertically' do
			medium_ship = Ship.new(2)
			expect(medium_ship.length?).to eq 2

			grid.place_medium(medium_ship, "C3")
			expect(grid.check("C4")).to eq medium_ship
		end

		it 'can be longer than two squares, vertically' do
			long_ship = Ship.new(3)
			expect(long_ship.length?).to eq 3

			grid.place_long(long_ship, "C3")
			expect(grid.check("C5")).to eq long_ship
		end

		it 'can be longer than one square, horizontally' do
			medium_ship = Ship.new(2)
			grid.place_medium_horizontally(medium_ship, "C3", "D3")
			expect(grid.check("D3")).to eq medium_ship
		end

		it 'can be longer than two squares, horizontally' do
			long_ship = Ship.new(3)
			grid.place_long_horizontally(long_ship, "C3", "D3", "E3")
			expect(grid.check("E3")).to eq long_ship
		end

		it 'will lose a life when hit' do
			grid.place_medium(patrol_boat,'B3')
			grid.fire_at('B4')
			expect(ship.lives_left).to eq 1
		end

		it 'will sink after all lives are lost' do
			grid.place_medium(patrol_boat,'B3')
			grid.fire_at('B3')
			grid.fire_at('B4')
			expect(patrol_boat).to be_sunk
		end
end

