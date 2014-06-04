require 'ship'
require 'grid'

describe 'Ship' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}
	let (:patrol_boat) {Ship.new(2)}

		it 'should not be hit when initialized' do
			expect(ship.hit?).to_not be_true
		end

		it 'can be hit' do
			ship.hit!
			expect(ship.hit?).to be_true
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

		it 'has a default length of 1 square' do
			expect(ship.length?).to eq 1
		end

		it 'can be set to any length on creation' do
			ship = Ship.new(5)
			expect(ship.length?).to eq 5
		end
end

