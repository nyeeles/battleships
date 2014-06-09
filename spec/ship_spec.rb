require 'ship'
require 'grid'

describe 'Ship' do
	let (:grid) {Grid.new}
	let (:patrol) {Patrol.new}

		it 'should not be hit when initialized' do
			expect(patrol.hit?).to_not be_true
		end

		it 'can be hit' do
			patrol.hit!
			expect(patrol.hit?).to be_true
		end

		it 'will lose a life when hit' do
			grid.insert_vertical(patrol,'B3')
			grid.fire_at('B4')
			expect(patrol.lives_left).to eq 1
		end

		it 'will sink after all lives are lost' do
			grid.insert_vertical(patrol,'B3')
			grid.fire_at('B3')
			grid.fire_at('B4')
			expect(patrol).to be_sunk
		end
end

