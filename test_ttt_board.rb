require "minitest/autorun"

require_relative "ttt_board.rb"
# require_relative "human_console.rb"

class Test_ttt_Board < Minitest::Test

	def test_ttt_board

		ttt_board = TTT_Board.new(Array.new(9, ""))
	# 										The (9, "") is saying that there are 8 empty 
	# 											strings/spaces in this array that can be 
	# 											filled from '0 to 9. 
	# 										Array.new is being implemented in the new TTT_Board
	# 										to say there is an array that has 9 strings.

		assert_equal(Array.new(9, ""), ttt_board.board)
	end

	def test_update_board_with_x_at_position_1

		ttt_board = TTT_Board.new(Array.new(9, ""))
	
		assert_equal(["x", "", "", "", "", "", "", "", ""], ttt_board.update_board(0, "x"))
										
	# 											(0, "x") means 0 is the holding space for
	# 											the string character "x" in this array.														
	end

	def test_update_board_with_x_at_position_1_o_at_position_9

		ttt_board = TTT_Board.new(Array.new(9, "")) 

		ttt_board.update_board(0,"x")

		ttt_board.update_board(8,"o")

		assert_equal(["x", "", "", "", "", "", "", "", "o"], ttt_board.update_board(0, "x"))
	end


	def test_update_board_with_x_at_position_1_o_at_position_9_x_at_position_8

		ttt_board = TTT_Board.new(Array.new(9, "")) 

		ttt_board.update_board(0, "x")

		ttt_board.update_board(8, "o")

		ttt_board.update_board(7, "x")

		assert_equal(["x", "", "", "", "", "", "", "x", "o"], ttt_board.update_board(0, "x"))
	end


	def test_open_space_position_1_returns_True

		ttt_board = TTT_Board.new(Array.new(9, "")) 
		ttt_board.board = ["x", "", "x", "", "", "", "", "", "x"]

		assert_equal(true, ttt_board.open_space?(1))
	end

	def test_open_space_position_0_returns_False

		ttt_board = TTT_Board.new(Array.new(9, "")) 
		ttt_board.board = ["x", "", "x", "", "", "", "", "", "x"]

		assert_equal(false, ttt_board.open_space?(0))
	end

  	
	def test_ttt_board_return_full_board_True

		ttt_board = TTT_Board.new(Array.new(9, "")) 

		ttt_board.board = ["x", "x", "x", "o", "o", "x", "x", "x", "x"]

		assert_equal(true, ttt_board.full_board?())
 	end

	def test_open_valid_choice_10_return_False

  		ttt_board = TTT_Board.new(Array.new(9, "")) 
		
		assert_equal(false, ttt_board.valid_choice?(10))
	end


	def test_ttt_board_return_board_win?

		ttt_board = TTT_Board.new(Array.new(9, "")) 
		ttt_board.board = ["x", "", "x", "", "", "", "", "", "x"]

		assert_equal(false, ttt_board.board_win?("X"))
	end

	def test_ttt_board_winning_position?

		ttt_board = TTT_Board.new(Array.new(9, "")) 

		ttt_board.board = ["X","X","X","","","","","",""]

		assert_equal(true, ttt_board.board_win?("X"))
	end
end