# require_relative "human_console"
# require_relative "board.rb"

class SequentialConsole   # The computer is picking the next open space board. 

	attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		board.each_index.select{|i| board[i] == ''}.first  
		 # Its saying to go thru each interger starting with first index character.
		 #it is to select that one.  The first empty space is then selected.
	end

end




 
   

 
  

 
   