#!/usr/bin/ruby
require('./lib/rps.rb')
game = RPS.new()

while game.game_running
  #puts game.round_number
  puts "========================================================================"
  if game.round_number > 3
    game.game_running = false
  end
  player_choice = game.get_player_choice()
  npc_choice = game.generate_rps()
  puts "computer chooses: #{npc_choice}"
  check_win = game.wins?(npc_choice, player_choice)
  
  if check_win == false
    check_tie = game.tie?(npc_choice, player_choice)
    if check_tie
      puts "tie! Pick again."
    else
      game.player_score += 1
      puts "You won this round!"
    end
  else
    game.npc_score += 1
    puts "computer won this round! :("
  end

  game.round_number += 1
end

if game.player_score > game.npc_score
  puts "You won the game! The final score was #{game.player_score} to #{game.npc_score}"
elsif game.player_score < game.npc_score
  puts "You lost the game :( The final score was #{game.npc_score} to #{game.player_score}"
else
  puts "Tie game! You had a score of #{game.player_score} and I had a score of #{game.npc_score}"
end