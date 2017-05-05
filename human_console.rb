# require_relative 'board.rb'
# require_relative 'console.rb'

class HumanConsole

	attr_accessor :marker

	def initialize(marker)
		@marker = marker
		#@name = name

	end

	def get_move(ttt_board)
			puts 'PICK A SPACE'
			  # to start the game and this must be a string.
			 move = gets.chomp.to_i
	end
end	
	# def	make_move(move)
	# 	if current_player.make_move 
	# 		# puts 'Invalid space'
	# 	end
	# end

	