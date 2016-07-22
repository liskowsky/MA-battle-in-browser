require "game"
require "player"

describe Game do
  subject(:game){Game.new(player_1, player_2)}
  subject(:player_1){double :player}
  subject(:player_2){double :player}
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
  describe "#initialize" do
    it "accepts player_1" do
      expect(game.player_1).to eq player_1
    end
    it "accepts player_2" do
      expect(game.player_2).to eq player_2
    end
  end
end
