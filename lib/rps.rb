class RPS
  def initialize(player_choice)
    @player_choice = player_choice
    @npc_score = 0
    @player_score = 0
    @round_number = 1
    @game_running = true
  end
  
  def npc_score
    @npc_score
  end

  def player_score
    @player_score
  end

  def player_choice
    @player_choice
  end

  def game_running
    @game_running
  end

  def round_number
    @round_number
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
    else
      @player_score += 1
    end
  end
  

  def generate_rps()
    rand_num = rand(3)
    if rand_num == 0
      return "rock"
    elsif rand_num == 1
      return "paper"
    else
      return "scissors"
    end
  end

  def run_game()
    while game_running
      puts @round_number
      if @round_number > 3
        @game_running = false
      end
      @round_number += 1
    end
  end


end