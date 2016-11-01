require 'minitest/autorun'
require_relative "unbeatable.rb"

class TestUnbeatable <Minitest::Test

	def test_unbeatable_ai
		player = UnbeatableAi.new("x")
		assert_equal("x", player.marker)
	end

	def test_for_get_move
		player = UnbeatableAi.new("x")
		assert_equal(true, [0, 1, 2, 3, 4, 5, 6, 7, 8].include?(player.get_move(["", "", "", "", "", "", "", "", ""])))
	end

	def test_for_win_at_zero
		player = UnbeatableAi.new("x")
		assert_equal(0, player.get_move(["", "x", "x", "", "", "", "", "", ""]))
	end

	def test_for_win_at_five
		player = UnbeatableAi.new("x")
		assert_equal(5, player.get_move(["", "", "", "x", "x", "", "", "", ""]))
	end

end
