require 'grid'
require 'ship'


describe 'Grid' do
	
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}
	before(:each) do 
		grid.place(ship,"B5")
	end


		it 'is created after initialization' do
			expect(grid.board.count).to eq (100)
		end

		it 'can place a ship and find it' do
			expect(grid.check("B5")).to eq ship
		end

		it 'can miss a ship when firing' do
			expect(grid.fire_at("B6")).to eq "missed"
		end

		it 'can hit ship when firing at' do
			grid.fire_at("B5")
			expect(ship.hit?).to be_true
		end

		it 'changes grid to "miss" if user fires at an empty square' do
			grid.fire_at("F2")
			expect(grid.board["F2"]).to eq "missed"
		end

		it 'changes grid to "hit" if user fires and hits a ship' do
			grid.fire_at("B5")
			expect(grid.board["B5"]).to eq "hit"
		end
end