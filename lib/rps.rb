class RPS
  def initialize()
    @npc_score = 0
    @player_score = 0
    @round_number = 1
    @game_running = true
  end
  
  def npc_score
    @npc_score
  end

  def npc_score=(npc_score)
    @npc_score = npc_score
  end

  def player_score
    @player_score
  end

  def player_score=(player_score)
    @player_score = player_score
  end

  def game_running
    @game_running
  end

  def game_running=(game_running)
    @game_running = game_running
  end

  def round_number
    @round_number
  end

  def round_number=(round_number)
    @round_number = round_number
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

  def get_player_choice()
    puts "Choose rock, paper, or scissors"
    player_choice = gets
    return player_choice.chomp
  end

  # def run_game()
  #   while game_running
  #     puts @round_number
  #     if @round_number > 3
  #       @game_running = false
  #     end
  #     player_choice = get_player_choice()
  #     puts player_choice
  #     npc_choice = generate_rps()
  #     puts npc_choice 
  #     check_win = wins?(npc_choice, player_choice)


  #     @round_number += 1
  #   end
    
  # end


end