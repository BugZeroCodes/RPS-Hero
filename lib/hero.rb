class Hero
  attr_reader :name, :health, :max_health, :power, :armor

  def initialize(name, health, max_health, power, armor)
    @name = name
    @health = health
    @max_health = max_health
    @power = power
    @armor = armor
    if @health > @max_health
      @health = @max_health
    end
  end
end
