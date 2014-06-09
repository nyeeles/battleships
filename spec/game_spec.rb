require 'game' 
require 'player'
require 'grid'

describe 'Battleships' do
		let (:player) {Player.new}
		let (:game) {Game.new}
		
	context 'output'do

		it 'prompts players to place their ships' do
			expect(STDOUT).to receive(:puts)
			game.place_ships_message_to(player)
		end

		it 'prompts players to take their turn' do
			expect(STDOUT).to receive(:puts)
			game.your_turn_to_fire(player)
		end
	end

end