require "game"

class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 100

  def initialize(name, game = Game.new, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @game = game
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end
