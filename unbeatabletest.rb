require 'minitest/autorun'
require_relative "unbeatable.rb"

class TestUnbeatable <Minitest::Test

	def test_unbeatable_ai
		player = UnbeatableAi.new("x")
		assert_equal("x", player.marker)
	end

end
