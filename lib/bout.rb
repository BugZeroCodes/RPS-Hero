class Bout
  attr_reader :character1, :character2
  
  def initialize(character1:, character2:)
    @character1 = character1
    @character2 = character2
  end

  def result
    if @character1 == @character2
      return :tie
    elsif (@character1 == :rock && @character2 == :scissors) ||
          (@character1 == :paper && @character2 == :rock) ||
          (@character1 == :scissors && @character2 == :paper)
      return :character1
    else
      return :character2
    end
  end
end
