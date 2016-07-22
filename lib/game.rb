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

  def p1_turn?
    @turn == 1
  end

  def p1_attack
    attack(@player_2)
    @turn = 2
  end

  def p2_attack
    attack(@player_1)
    @turn = 1
  end
end
