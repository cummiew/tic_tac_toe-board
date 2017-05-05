require "minitest/autorun" 
require_relative "game2.rb" 

class TestPosition < Minitest::Test 

	def test_1_verify_board_output_new_game 

		game = Game.new 

		game.board.game_board = ["", "", "", "", "", "", "", "", ""] 

		result = game.output_board 

		assert_equal([["", "", ""], ["", "", ""], ["", "", ""]], result) 
	end  
 