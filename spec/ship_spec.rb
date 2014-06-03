require 'ship'
require 'debugger'

describe Ship do
		let(:ship) {Ship.new}

	it 'can be created'do
		array = [] << ship
		expect(array.count).to eq 1
	end

	it 'can be placed' do
		ship.place(1,2) 
		expect(ship.position?).to eq ["1","2"]
	end

	it 'can be hit' do
		ship.place(1,2) 
		ship.fire(1)
		expect(ship.hit?).to be_true
	end

	it 'can be missed' do
		ship.place(1,2) 
		ship.fire(3)	
		expect(ship.hit?).to be_false
	end

	it 'can be larger than 1 space' do
		ship.place(1,2)
		expect(ship.position?).to eq ["1","2"]
	end

	it 'has a length' do
		ship.place(2, 4)
		expect(ship.length).to eq 3
	end

	it 'should not be sunk' do
		ship
		expect(ship.sunk?).to be_false
	end

	it 'can be sunk' do
		ship.place(1,2)
		ship.fire(1)
		ship.fire(2)
		expect(ship.sunk?).to be_true
	end

end