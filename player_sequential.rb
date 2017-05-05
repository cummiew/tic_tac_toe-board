class PlayerSequential 

	def initialize(moves) 

			@moves = ["t1", "t2", "t3", "m1", "m2", "m3", "b1", "b2", "b3"]  # "human friendly" board positions 
	end 									# Method to return first open position 
 

	def get_move(game_board) 

			position = game_board.index("")  # get the index of the first open position 
		
			move = @moves[position]  # get the corresponding location for the index 
	end 