
class TTT_Board 
	
attr_accessor :board 

	def initialize(board)
		@board = board
		
	end

	def update_board(position, marker)
		@board[position] = marker
		@board = board
	end


	def open_space?(position)
		if @board[position] == ""
			return true
		else
			return false
		end
	end

	def full_board?()
		@board.count("") == 0 

	end

	def valid_choice?(choice)

		if choice > 8 || choice < 0
			 return false
		else 
			 return true
		end
	end

	def board_win?(marker)

		@board[0] == marker && @board[1] == marker && @board[2] == marker ||

		@board[3] == marker && @board[4] == marker && @board[5] == marker ||

		@board[6] == marker && @board[7] == marker && @board[8] == marker ||

		@board[2] == marker && @board[4] == marker && @board[6] == marker ||

		@board[0] == marker && @board[4] == marker && @board[8] == marker ||

		@board[0] == marker && @board[3] == marker && @board[6] == marker ||

		@board[1] == marker && @board[4] == marker && @board[7] == marker ||

		@board[2] == marker && @board[5] == marker && @board[8] == marker 
	
	end

	def	winning_position?

		win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

			win_array.any? do |win|

			win.all? {|move| ttt_board[move] == "X"} || win.all? {|move| ttt_board[move] == "0"} 
		end
	end		

end

# ttt_board = TTT_Board.new(Array.new([" ", "x", "", "", "", "", "", "", ""]))
# ttt_board.open_space?(