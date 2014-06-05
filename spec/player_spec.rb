require 'player'

	describe player do

		it 'can create a player' do 
			player_1 = player.new
			expect(player_1).to eq player_1
		end
	end