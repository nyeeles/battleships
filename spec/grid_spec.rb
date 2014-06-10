require 'grid'
require 'ship'


describe 'Grid' do
	
	let (:patrol) {Patrol.new}
	let (:destroyer) {Destroyer.new}
	let (:grid) {Grid.new}
	before(:each) do 
		grid.insert_vertical(patrol,"B5")
	end

		it 'is created after initialization' do
			expect(grid.board.count).to eq (100)
		end

		it 'can place a ship and find it' do
			expect(grid.check("B5")).to eq patrol
		end

		# it 'can miss a ship when firing' do
		# 	expect(grid.fire_at("B7")).to eq :miss
		# end

		it 'can hit ship when firing at' do
			grid.fire_at("B5")
			expect(patrol.hit?).to be_true
		end

		# it 'changes grid to "miss" if user fires at an empty square' do
		# 	grid.fire_at("F2")
		# 	expect(grid.board["F2"]).to eq :miss
		# end

		# it 'changes grid to "hit" if user fires and hits a ship' do
		# 	grid.fire_at("B5")
		# 	expect(grid.board["B5"]).to eq :hit
		# end

##################################################################
		# BELOW NEEDS REFACTORING!

		it 'can place boats 2 squares long, vertically' do
			grid.insert_vertical(patrol, "C3")
			expect(grid.check("C4")).to eq patrol
		end

		it 'can place boats 3 squares long, vertically' do
			grid.insert_vertical(destroyer, "C3")
			expect(grid.check("C5")).to eq destroyer
		end

		it 'can place boats 2 squares long, horizontally' do
			grid.insert_horizontal(patrol, "C3")
			expect(grid.check("D3")).to eq patrol
		end

		it 'can place boats 3 squares long, horizontally' do
			grid.insert_horizontal(destroyer, "C3")
			expect(grid.check("E3")).to eq destroyer
		end
end