class Bout
  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def result
    if @player1 == @player2
      return :tie
    elsif (@player1 == :rock && @player2 == :scissors) ||
          (@player1 == :paper && @player2 == :rock) ||
          (@player1 == :scissors && @player2 == :paper)
      return :player1
    else
      return :player2
    end
  end
end
