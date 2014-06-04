require './lib/version1'


describe 'Battleships' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

	context Ship do

		it 'can be placed' do
			expect(grid.place(ship,0)).to eq [ship, :sea]
		end

		it 'should not be hit when initialized' do
			expect(ship.hit?).to_not be_true
		end

		it 'can be hit' do
			ship.hit!
			expect(ship.hit?).to be_true
		end

		it ''do
		end

	end

	context Grid do

		# it 'has height 1' do
		# 	expect(grid.board.count).to eq 1
		# end

		it 'has width 2' do
			expect(grid.board.count).to eq 2
		end

		it 'can check if a ship is at a coordinate' do
			grid.place(ship,0)
			expect(grid.check(0)).to eq ship
		end

		# it 'can fire at a ship and hit it' do
		# 	grid.place(ship,0)
		# 	grid.fire_at(grid.board[0])
		# 	expect(ship.hit?).to be_true
		# end

		# it 'can fire at not a ship' do
		# 	grid.fire_at(grid.board[1])
		# 	expect(ship.hit?).to be_false
		# end

	end

end