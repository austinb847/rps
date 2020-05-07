#!/usr/bin/ruby
require('./lib/rps.rb')
game = RPS.new()

while game.game_running
  puts game.round_number
  if game.round_number > 3
    game.game_running = false
  end
  player_choice = game.get_player_choice()
  npc_choice = game.generate_rps()
  puts npc_choice 
  check_win = game.wins?(npc_choice, player_choice)
  
  if check_win == false
    check_tie = game.tie?(npc_choice, player_choice)
    if check_tie
      puts "tie! Pick again."
    end
  end

  game.round_number += 1
end