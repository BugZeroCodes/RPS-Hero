class Character
  attr_reader :name, :health, :max_health, :power, :armor

  def initialize(name:, health:, max_health:, power:, armor: 5)
    @name = name
    @health = health
    @max_health = max_health
    @power = power
    @armor = armor
    if @health > @max_health
      @health = @max_health
    end
  end

  def receive_damage(damage)
    @health = @health - damage
    if @health < 0
      @health = 0
    end
  end
end
