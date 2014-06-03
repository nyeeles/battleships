require 'ship'

describe Ship do
		let(:ship) {Ship.new}

	it 'can be created'do
		array = [] << ship
		expect(array.count).to eq 1
	end

	it 'can be placed' do
		ship.place("1") 
		expect(ship.position?).to eq "1"
	end

	it 'can be hit' do
		ship.place("1") 
		ship.fire("1")
		expect(ship.hit?).to be_true
	end

	it 'can be missed' do
		ship.place("1") 
		ship.fire("2")
		expect(ship.hit?).to be_false
	end

end