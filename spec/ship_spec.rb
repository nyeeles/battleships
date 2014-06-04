require 'ship'
require 'grid'

describe 'Ship' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}
	let (:longship) {Ship.new}

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

		it 'can be longer than one' do
			longship.length(3)
			grid.place(longship, "B5")
			expect(grid.check("D5")).to eq longship
		end
end