class Board
	
attr_accessor :tttboard
	
	def initialize()
		@tttboard = Array.new(9, "")
	end

	def update_board(position, marker)
		tttboard[position] = marker
	end

	def open_space?(position)
		tttboard[position] == ""
	end

	def full_board?()
		tttboard.count("") == 0
	end

	def board_win?(marker)
		tttboard[0] == marker && tttboard[1] == marker && tttboard[2] == marker ||
		tttboard[3] == marker && tttboard[4] == marker && tttboard[5] == marker ||
	    tttboard[6] == marker && tttboard[7] == marker && tttboard[8] == marker ||
		tttboard[0] == marker && tttboard[3] == marker && tttboard[6] == marker ||
		tttboard[1] == marker && tttboard[4] == marker && tttboard[7] == marker ||
		tttboard[2] == marker && tttboard[5] == marker && tttboard[8] == marker ||
		tttboard[2] == marker && tttboard[4] == marker && tttboard[6] == marker ||
		tttboard[0] == marker && tttboard[4] == marker && tttboard[8] == marker
	end

	def board_tie(marker)
		if 
			tttboard[0] != marker && tttboard[1] == marker && tttboard[2] == marker ||
			tttboard[0] != marker && tttboard[1] != marker && tttboard[2] == marker ||
			tttboard[0] != marker && tttboard[1] != marker && tttboard[2] != marker ||
			tttboard[0] == marker && tttboard[1] != marker && tttboard[2] != marker ||
			tttboard[0] == marker && tttboard[1] == marker && tttboard[2] != marker ||
			tttboard[0] == marker && tttboard[1] != marker && tttboard[2] == marker ||
			tttboard[3] != marker && tttboard[4] == marker && tttboard[5] == marker ||
			tttboard[3] != marker && tttboard[4] != marker && tttboard[5] == marker ||
			tttboard[3] != marker && tttboard[4] != marker && tttboard[5] != marker ||
			tttboard[3] == marker && tttboard[4] != marker && tttboard[5] != marker ||
			tttboard[3] == marker && tttboard[4] == marker && tttboard[5] != marker ||
			tttboard[3] == marker && tttboard[4] != marker && tttboard[5] == marker ||
			tttboard[6] != marker && tttboard[7] == marker && tttboard[8] == marker ||
			tttboard[6] != marker && tttboard[7] != marker && tttboard[8] == marker ||
			tttboard[6] != marker && tttboard[7] != marker && tttboard[8] != marker ||
			tttboard[6] == marker && tttboard[7] != marker && tttboard[8] != marker ||
			tttboard[6] == marker && tttboard[7] == marker && tttboard[8] != marker ||
			tttboard[6] == marker && tttboard[7] != marker && tttboard[8] == marker ||
			tttboard[0] != marker && tttboard[3] == marker && tttboard[6] == marker ||
			tttboard[0] != marker && tttboard[3] != marker && tttboard[6] == marker ||
			tttboard[0] != marker && tttboard[3] != marker && tttboard[6] != marker ||
			tttboard[0] == marker && tttboard[3] != marker && tttboard[6] != marker ||
			tttboard[0] == marker && tttboard[3] == marker && tttboard[6] != marker ||
			tttboard[0] == marker && tttboard[3] != marker && tttboard[6] == marker ||
			tttboard[1] != marker && tttboard[4] == marker && tttboard[7] == marker ||
			tttboard[1] != marker && tttboard[4] != marker && tttboard[7] == marker ||
			tttboard[1] != marker && tttboard[4] != marker && tttboard[7] != marker ||
			tttboard[1] == marker && tttboard[4] != marker && tttboard[7] != marker ||
			tttboard[1] == marker && tttboard[4] == marker && tttboard[7] != marker ||
			tttboard[1] == marker && tttboard[4] != marker && tttboard[7] == marker ||
			tttboard[2] != marker && tttboard[5] == marker && tttboard[8] == marker ||
			tttboard[2] != marker && tttboard[5] != marker && tttboard[8] == marker ||
			tttboard[2] != marker && tttboard[5] != marker && tttboard[8] != marker ||
			tttboard[2] == marker && tttboard[5] != marker && tttboard[8] != marker ||
			tttboard[2] == marker && tttboard[5] == marker && tttboard[8] != marker ||
			tttboard[2] == marker && tttboard[5] != marker && tttboard[8] == marker ||
			tttboard[2] != marker && tttboard[4] == marker && tttboard[6] == marker ||
			tttboard[2] != marker && tttboard[4] != marker && tttboard[6] == marker ||
			tttboard[2] != marker && tttboard[4] != marker && tttboard[6] != marker ||
			tttboard[2] == marker && tttboard[4] != marker && tttboard[6] != marker ||
			tttboard[2] == marker && tttboard[4] == marker && tttboard[6] != marker ||
			tttboard[2] == marker && tttboard[4] != marker && tttboard[6] == marker ||
			tttboard[0] != marker && tttboard[4] == marker && tttboard[8] == marker ||
			tttboard[0] != marker && tttboard[4] != marker && tttboard[8] == marker ||
			tttboard[0] != marker && tttboard[4] != marker && tttboard[8] != marker ||
			tttboard[0] == marker && tttboard[4] != marker && tttboard[8] != marker ||
			tttboard[0] == marker && tttboard[4] == marker && tttboard[8] != marker ||
			tttboard[0] == marker && tttboard[4] != marker && tttboard[8] == marker &&
			tttboard.count("") == 0 
			return "Tie!"

		end
	end

end