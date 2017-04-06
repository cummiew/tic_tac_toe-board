# require_relative 'console.rb'
# require_relative 'game_console.rb'

class Board
	
attr_accessor :ttt_board, :position

	def initialize
		@ttt_board = Array.new(9,"")
	end

	def update_board(position, marker)
		@ttt_board[position] = marker
	end

	def open_space?(position)
		@ttt_board[position] == ""
	end

	def full_board?()
		@ttt_board.count("") == 0  
	end

	def valid_choice?(choice)
		if choice > 8
			 false
		else true
		end
	end

	def board_win?(marker)

		@ttt_board[0] == marker && @ttt_board[1] == marker && @ttt_board[2] == marker ||

		@ttt_board[3] == marker && @ttt_board[4] == marker && @ttt_board[5] == marker ||

		@ttt_board[6] == marker && @ttt_board[7] == marker && @ttt_board[8] == marker ||

		@ttt_board[2] == marker && @ttt_board[4] == marker && @ttt_board[6] == marker ||

		@ttt_board[0] == marker && @ttt_board[4] == marker && @ttt_board[8] == marker ||

		@ttt_board[0] == marker && @ttt_board[3] == marker && @ttt_board[6] == marker ||

		@ttt_board[1] == marker && @ttt_board[4] == marker && @ttt_board[7] == marker ||

		@ttt_board[2] == marker && @ttt_board[5] == marker && @ttt_board[8] == marker 
	end

	def game_over?()
		@ttt_board.count
	end
end



	