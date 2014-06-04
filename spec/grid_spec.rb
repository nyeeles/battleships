require 'grid'
require 'ship'


describe 'Grid' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

		it 'is created after initialization' do
			expect(grid.board.count).to eq (100)
		end

		it 'can check if a ship is at a coordinate' do
			grid.place(ship,"B5")
			expect(grid.check("B5")).to eq ship
		end

		it 'can miss ship when firing' do
			grid.place(ship,"B5")
			expect(grid.fire_at("B6")).to eq "missed"
		end

		it 'can hit ship when firing at' do
			grid.place(ship,"D6")
			grid.fire_at("D6")
			expect(ship.hit?).to be_true
		end

		it 'changes grid to "miss" if user fires at an empty square' do
			grid.place(ship,"D6")
			grid.fire_at("B6")
			expect(grid.board["B6"]).to eq "missed"
		end

		it 'changes grid to "hit" if user fires and hits a ship' do
			grid.place(ship,"D6")
			grid.fire_at("D6")
			expect(grid.board["D6"]).to eq "hit"
		end
end