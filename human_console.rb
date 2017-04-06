# require_relative 'board.rb'
# require_relative 'console.rb'

class HumanConsole

	attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
			puts 'Pick a space'
			  		# in order to see it there, must be a string.
			 move = gets.chomp.to_i
	end

	def move 
		if board[move] == ''
			move
		else
			puts 'Invalid space'
			get_move(board)
		end
	end
end
	