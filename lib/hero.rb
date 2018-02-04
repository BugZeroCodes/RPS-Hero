class Hero
  attr_reader :health, :max_health, :power, :armor

  def initialize(health, max_health, power, armor)
    @health = health
    @max_health = max_health
    @power = power
    @armor = armor
  end
end
