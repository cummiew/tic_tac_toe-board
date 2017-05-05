require_relative "ttt_board.rb"
require_relative "human_console.rb"
require_relative 'sequential_console.rb'

class Console

	attr_accessor :player_1, :player_2, :board, :current_player
	
	def initialize(player_1, player_2)

		@player_1 = player_1
		@player_2 = player_2
		@board = TTT_Board.new(Array.new(9, ""))
		@current_player = player_1

	end

	def display_board()

		puts """       #{@board.board[0]} | #{@board.board[1]} | #{@board.board[2]}

       _____
  
       #{@board.board[3]} | #{@board.board[4]} | #{@board.board[5]}

       ______

       #{@board.board[6]} | #{@board.board[7]} | #{@board.board[8]}

       """
    end

    def get_move
    	current_player.get_move(@board.board)
	end


	def make_move(move)
		board.update_board(move, current_player.marker)
	end


	def change_player

		if @current_player == player_1
		   @current_player = player_2
		else
		   @current_player = player_1
		end
	end

	def game_win?
		board.board_win?(current_player.marker)
	end


	def game_tie?
		board.full_board?()
	end


	def game_over?
		board.board_over?(current_player.marker)	
	end
end

game = Console.new(HumanConsole.new('o'), SequentialConsole.new('x'))

game.display_board
							# game.change_player   # end of first, current player, making move. Passing in a 'o'.
									    		   # and then player 2 who is moving, and then a 'x' is passed in. 
		until game.game_tie? || game.game_win? do 
									# First I ran game_tie, made sure it broke out.
									# Second I then ran game_win, made sure it broke out.
								    # Third I ran both together with the or symbol,||, it 
								    # too broke out. Which was the objective so Great!!! 

		move = game.get_move

		game.make_move(move)

		game.display_board

		game.change_player 
									# changing from player 1, current player, 
					 				# making move. 
					 				# Passing in a 'o' then P2, 'x'.
		
		end

		if game.game_win?	

			puts "#{game.current_player.marker} Winner!"  	 
									# The word "Winner" came back.  Passes!
		else
			puts "Tie!"	
									# The word "Tie" came back.  Passes!			
		end