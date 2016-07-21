require 'player'

describe Player do
subject(:oggie) { described_class.new("Oggie") }
subject(:karol) { described_class.new("Karol") }

  describe "#name" do
    it "returns the name of the player" do
      expect(oggie.name).to eq "Oggie"
    end
  end
end
