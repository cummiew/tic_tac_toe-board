require 'minitest/autorun'
require_relative 'sequential_console.rb'

class TestSequential < Minitest::Test
 
 	def test_sequential_returns_x
 		player = SequentialConsole.new('x')
 		assert_equal('x', player.marker)
 	end

 	def test_sequential_returns_o
 		player = SequentialConsole.new('o')
 		assert_equal('o', player.marker)
 	end

 	def test_sequential_returns_empty_board
 		player = SequentialConsole.new('x')
 		board = ['','','','','','','','','']
 		Array.new(board)
 		assert_equal(0, player.get_move(board))
 	end
 		
 # 	def test_sequential_returns_full_board

 # end
