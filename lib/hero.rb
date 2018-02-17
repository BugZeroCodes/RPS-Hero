class Hero < Character
  def get_throw
    puts 'Pick "rock", "paper", or "scissors."'
    rps_choice = gets.chomp
    until ['rock','paper','scissors'].include? rps_choice
      puts 'Pick "rock", "paper", or "scissors"'
      rps_choice = gets.chomp
    end
    return rps_choice.to_sym
  end
end
