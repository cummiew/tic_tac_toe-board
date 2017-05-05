require 'minitest/autorun' 

require_relative 'human_console.rb'
require_relative 'sequential_console.rb'
require_relative 'console.rb'

class TestConsole < Minitest::Test
 
	def test_new_console(game)	

		@game = Console.new(HumanConsole.new('o'), SequentialConsole.new('x'))
	
	end

		game.display_ttt_board? 
							# game.change_player   # end of first, current player, making move. Passing in a 'o'.
									    		   # and then player 2 who is moving, and then a 'x' is passed in. 
		until game.game_tie? || game.game_win? do 
									# First I ran game_tie, made sure it broke out.
									# Second I then ran game_win, made sure it broke out.
								    # Third I ran both together with the or symbol,||, it 
								    # too broke out. Which was the objective so Great!!! 
		game.change_player 
									# changing from player 1, current player, 
					 				# making move. 
					 				# Passing in a 'o' then P2, 'x'.
		move = game.get_move

		game.make_move(move)

		game.display_ttt_board
		
		end

		if game.game_win?	

			puts "#{game.current_player.marker} Winner!"  	 
									# The word "Winner" came back.  Passes!
		else
			puts "Tie!"	
									# The word "Tie" came back.  Passes!			
		end
	end


