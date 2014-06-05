require 'game' 
require 'player'
require 'grid'

	describe 'Battleships' do
		let (:playa) {Playa.new}
		let (:game) {Game.new}

		
		it 'creates two players' do
			expect(game.playas.count).to eq 2
		end

		it 'will call on the grid class to initialize the board' do
			grid = Grid.new
			expect(grid).to eq 
		end

end