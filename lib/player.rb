require_relative "game.rb"

class Player

attr_reader :name, :hp, :turn

  def initialize(name)
    @name = name
    @hp = 100
    @turn = false
  end

  def receive_damage
    @hp -= 10
  end

end
