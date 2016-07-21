require 'player'

describe Player do
  subject(:player_1){Player.new("Bob")}
  subject(:player_2){Player.new("Bill")}
  it "displays player name" do
    expect(player_1.name).to eq "Bob"
  end

  it 'starts with 100 HP' do
    expect(player_1.hp).to eq 100
  end

  describe '#attack' do
    it 'reduces your own HP by 10' do
      expect{player_2.attack}.to change{player_2.hp}.by (-10)
    end
  end
end
