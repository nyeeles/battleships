require 'player'

	describe Player do

		it 'can have a name' do 
			player1 = Player.new('nic')
			expect(player1.name).to eq 'nic'
		end
	end