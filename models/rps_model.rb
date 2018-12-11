class RPSGame

  def self.check_win(hand1, hand2)
    hand1 = hand1.downcase
    hand2 = hand2.downcase

    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if hand1 == hand2
      return {outcome: 'draw'}
    elsif win[hand1] == hand2
      return {outcome: 'win', victor: 'Player 1', winninghand: hand1}
    elsif win[hand2] == hand1
      return {outcome: 'win', victor: 'Player 2', winninghand: hand2}
    else
      return {outcome: 'error'}
    end
  end

end
