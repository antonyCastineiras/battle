require 'game'

describe Game do
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:game) { Game.new(player_1, player_2) }


  describe '#attack' do
    it 'damages the player' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end


end
