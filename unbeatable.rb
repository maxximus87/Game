class UnbeatableAi
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		board.index("")
		super('o', board)
	end

	def winning_move(player)
		
end


 WINNING_SPACES = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
 WINNING_PRIORITIES = [[0, 1, 2], [0, 2, 1], [1, 2, 0]]