require_relative "player.rb"

class Game

  attr_reader :player_1, :player_2
  attr_accessor :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack(player)
    player.receive_damage
  end

end
