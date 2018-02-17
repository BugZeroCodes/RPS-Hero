class Arena
  def initialize(character1:, character2:)
    @character1 = character1
    @character2 = character2
  end

  def apply_damage(doing_damage)
    if doing_damage == :character1
      @character2.receive_damage(@character1.power)
    elsif doing_damage == :character2
      @character1.receive_damage(@character2.power)
    end
  end

  def winner
    if @character1.health == 0
      return @character2.name
    elsif @character2.health == 0
      return @character1.name
    else
      return nil
    end
  end
end
