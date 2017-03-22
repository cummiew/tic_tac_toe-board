require "minitest/autorun"

require_relative "board.rb"



class TestBoard < Minitest::Test

	def test_new_board

		board = Board.new 

		assert_equal(Array.new(9, ""), board.tttboard)

	end



	def test_update_with_x_at_position_1

		board = Board.new 

		board.update_board(0,"x")

		assert_equal(["x", "", "", "", "", "", "", "", ""], board.tttboard)

	end



	def test_update_with_x_at_position_1_o_at_position_9

		board = Board.new 

		board.update_board(0,"x")

		board.update_board(8,"o")

		assert_equal(["x", "", "", "", "", "", "", "", "o"], board.tttboard)

	end



	def test_update_with_x_at_position_1_o_at_position_9_x_at_position_8

		board = Board.new 

		board.update_board(0,"x")

		board.update_board(8,"o")

		board.update_board(7,"x")

		assert_equal(["x", "", "", "", "", "", "", "x", "o"], board.tttboard)

	end



	def test_update_with_x_at_position_1_o_at_position_9_x_at_position_8_o_at_postion_4

		board = Board.new 

		board.tttboard = ["x", "", "", "o", "", "", "", "x", "o"]

		board.update_board(3,"o")

		assert_equal(["x", "", "", "o", "", "", "", "x", "o"], board.tttboard)

	end



	def test_open_space

		board = Board.new 

		board.tttboard = ["x", "x", "", "o", "o", "", "", "x", "o"]

		assert_equal(true, board.open_space?(2))

	end



	def test_taken_space

		board = Board.new 

		board.tttboard = ["x", "x", "", "o", "o", "", "", "x", "o"]

		assert_equal(false, board.open_space?(0))

	end



	def test_invalid_position

		board = Board.new 

		board.tttboard = ["x", "x", "", "o", "o", "", "", "x", "o"]

		assert_equal(false, board.open_space?(11))

	end



	def test_full_board

		board = Board.new 

		board.tttboard = ["x", "x", "x", "o", "o", "x", "x", "x", "x"]

		assert_equal(true, board.full_board?())

	end



	def test_nonfull_board

		board = Board.new 

		board.tttboard = ["x", "x", "x", "o", "o", "x", "x", "x", ""]

		assert_equal(false, board.full_board?())

	end



	def test_win_x1

		board = Board.new 

		board.tttboard = ["x", "x", "x", "", "", "", "", "", ""]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x2

		board = Board.new 

		board.tttboard = ["", "", "", "x", "x", "x", "", "", ""]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x3

		board = Board.new 

		board.tttboard = ["", "", "", "", "", "", "x", "x", "x"]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x4

		board = Board.new 

		board.tttboard = ["x", "", "", "x", "", "", "x", "", ""]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x5

		board = Board.new 

		board.tttboard = ["", "x", "", "", "x", "", "", "x", ""]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x6

		board = Board.new 

		board.tttboard = ["", "", "x", "", "", "x", "", "", "x"]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x7

		board = Board.new 

		board.tttboard = ["", "", "x", "", "x", "", "x", "", ""]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win_x8

		board = Board.new 

		board.tttboard = ["x", "", "", "", "x", "", "", "", "x"]

		marker = "x"

		assert_equal(true, board.board_win?(marker))

	end



	def test_win

		board = Board.new 

		board.tttboard = ["x", "", "x", "", "", "", "", "", "x"]

		marker = "x"

		assert_equal(false, board.board_win?(marker))

	end



	def test_tie_1

		board = Board.new 

		board.tttboard = ["o", "o", "x", "x", "x", "o", "o", "x", "o"]

		marker = "x"

		assert_equal("Tie!", board.board_tie(marker))

	end



	def test_tie_2

		board = Board.new 

		board.tttboard = ["o", "x", "o", "o", "x", "x", "x", "o", "o"]

		marker = "x"

		assert_equal("Tie!", board.board_tie(marker))

	end



end
Contact GitHub API Training Shop Blog About 

© 2017 GitHub, Inc. Terms Privacy Security Status Help 