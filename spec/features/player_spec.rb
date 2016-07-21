require 'player'

describe Player do
subject(:oggie) { described_class.new("Oggie") }
subject(:karol) { described_class.new("Karol") }

  describe "#name" do
    it "returns the name of the player" do
      expect(oggie.name).to eq "Oggie"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(karol.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(karol).to receive(:receive_damage)
      oggie.attack(karol)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { karol.receive_damage }.to change { karol.hit_points }.by(-10)
    end
  end
end
