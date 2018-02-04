class Arena
  def initialize(hero1, hero2)
    @hero1 = hero1
    @hero2 = hero2
  end

  def apply_damage(doing_damage)
    if doing_damage == :hero1
      @hero2.receive_damage(@hero1.power)
    elsif doing_damage == :hero2
      @hero1.receive_damage(@hero2.power)
    end
  end

  def winner
    if @hero1.health == 0
      return @hero2.name
    elsif @hero2.health == 0
      return @hero1.name
    else
      return nil
    end
  end
end
