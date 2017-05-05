# require_relative "board.rb"
# require_relative ""

class Position
attr_accessor :position_1, :position_2, :ttt_board, :current_player

	def initialize(position_1, position_2,game)

		@position_1 = position_1	
		@position_2 = position_2
		@board = TTT_Board.new
		@current_player = position_1

	end

