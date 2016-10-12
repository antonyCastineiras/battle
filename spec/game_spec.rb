require './lib/game.rb'


describe Game do
	let(:player_1) { double(name: :player_1, hp: 100) }
	let(:player_2) { double(name: :player_2, hp: 100) }
	subject { described_class.new(player_1,player_2) }

	describe '#player_1' do
		it 'returns player_1' do
			expect(subject.player_1).to eq player_1
		end
	end

	describe '#player_2' do
		it 'returns player_2' do
			expect(subject.player_2).to eq player_2
		end
	end

	describe '#attack' do
		it "reduces player's hp by 10" do
			allow(player_2).to receive(:dead?)
			expect(player_2).to receive(:damage)
			subject.attack(player_2)
		end
	end

	describe '#switch_turn' do
		it 'switches the turn' do
			player_1 = subject.current_player
			subject.switch_turn
			expect(subject.current_player).not_to eq player_1
		end
	end


end
