require 'ship'
require 'grid'

describe 'Ship' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

		it 'can be placed' do
			grid.place(ship,"H2")
			expect(grid.check("H2")).to eq ship
		end

		it 'should not be hit when initialized' do
			expect(ship.hit?).to_not be_true
		end

		it 'can be hit' do
			ship.hit!
			expect(ship.hit?).to be_true
		end

		it 'can be sunk' do
			ship.hit!
			expect(ship.sunk?).to be_true
		end

		it 'is one square long as default' do
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
end

