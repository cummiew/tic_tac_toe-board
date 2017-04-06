require_relative 'console.rb'
# require_relative 'human_consol


game = Console.new(HumanConsole.new('o'), SequentialConsole.new('x'))
	game.display_board   
# 										game.change_player   # end of first, current player, making move. Passing in a 'o'.
# 									    game.display_board   # here its player 2 who is moving and a 'x' is passed in. 
	until game.game_tie? || game.game_win? 
									# First I ran game_tie, made sure it broke out.
									# Second I then ran game_win, made sure it broke out.
								    # Third I ran both together with the or symbol,||, it 
								    # too broke out. Which was the objective so Great!!!
	# game.display_board 
	game.change_player  #changing from player 1, current player, making move. Passing in a 'o' to P2 'x'.
	move = game.get_move
	game.make_move(move)
	game.display_board
	end

	if game.game_win?

	
		puts "#{game.current_player.marker} win"  	# The word 'win' came back.  Passes
	else 											
		
		puts "tie"									# The word "tie" came back.  Passes			
	end

# 	game.game_over?
# 	game.change_player  #changing from player 1, current player, making move. Passing in a 'o' to P2 'x'.
# 	move = game.get_move
# 	game.make_move(move)
# 	game.display_board
	




 
