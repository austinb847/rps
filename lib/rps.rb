class RPS
  def initialize()
    @npc_score = 0
    @player_score = 0
    @round_number = 1
  end
  
  def npc_score
    @npc_score
  end

  def player_score
    @player_score
  end
  
  def wins?(obj, arg)
    if (obj == "rock") & (arg == "scissors")
      true
    elsif (obj == "scissors") & (arg == "paper")
      true
    elsif (obj == "paper") & (arg == "rock")
      true
    else
      false
    end
  end

  def tie?(obj, arg)
    if(obj == arg)
      true
    else
      false
    end
  end

  def add_to_score(check_win)
    if check_win
      @npc_score += 1
    end
  end
  

end