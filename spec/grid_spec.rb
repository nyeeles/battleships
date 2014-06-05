require 'grid'
require 'ship'


describe 'Grid' do
	
	let (:ship) {Ship.new}
	let (:patrol_boat) {Ship.new(2)}
	let (:submarine) {Ship.new(3)}
	let (:grid) {Grid.new}
	before(:each) do 
		grid.insert(ship,"B5")
	end

		it 'is created after initialization' do
			expect(grid.board.count).to eq (100)
		end

		it 'can place a ship and find it' do
			expect(grid.check("B5")).to eq ship
		end

		it 'can miss a ship when firing' do
			expect(grid.fire_at("B6")).to eq :missed
		end

		it 'can hit ship when firing at' do
			grid.fire_at("B5")
			expect(ship.hit?).to be_true
		end

		it 'changes grid to "miss" if user fires at an empty square' do
			grid.fire_at("F2")
			expect(grid.board["F2"]).to eq :missed
		end

		it 'changes grid to "hit" if user fires and hits a ship' do
			grid.fire_at("B5")
			expect(grid.board["B5"]).to eq :hit
		end

##################################################################
		# BELOW NEEDS REFACTORING!

		it 'can place boats 2 squares long, vertically' do
			grid.insert_vertical(patrol_boat, "C3")
			expect(grid.check("C4")).to eq patrol_boat
		end

		it 'can place boats 3 squares long, vertically' do
			grid.insert_vertical(submarine, "C3")
			expect(grid.check("C5")).to eq submarine
		end

		it 'can place boats 2 squares long, horizontally' do
			grid.insert_medium_horizontal(patrol_boat, "C3", "D3")
			expect(grid.check("D3")).to eq patrol_boat
		end

		it 'can place boats 3 squares long, horizontally' do
			grid.insert_large_horizontal(submarine, "C3", "D3", "E3")
			expect(grid.check("E3")).to eq submarine
		end
end