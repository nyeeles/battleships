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
			expect(grid.fire_at("B6")).to eq("Miss")
		end

		it 'can hit ship when firing at' do
			grid.place(ship,"D6")
			expect(grid.fire_at("D6")).to eq(ship.hit!)
		end

end