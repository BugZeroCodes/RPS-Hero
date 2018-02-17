class Arena
  attr_reader :history

  def initialize(character1:, character2:)
    @history = []
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

  def start_match
    while self.winner == nil
      history << Bout.new(character1: @character1.get_throw,
                          character2: @character2.get_throw)
      self.apply_damage(history.last.result)
    end
  end
end
