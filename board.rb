require_relative "console_game.rb"
class Board

	attr_accessor :board

	def initialize
		@board = Array.new(9, "")
	end

	def update(position, symbol)
		@board[position] = symbol
	end

	def valid_space?(position)
		if @board[position] == "x" || @board[position] == "o"
			false
		else
			true
		end
	end

	def valid_input?(position)
		if position.to_i <= 8 && position.to_i >= 0 && position =~ (/\d/)
			board[position] = board[position] + 1
			true
		else
			false
		end
	end

	def full_board?
		board.count("") == 0
		# unless board.include?("")
		# 	true
		
	end

	def winner?(symbol)

	if board[0] == symbol && board[1] == symbol && board[2] == symbol ||
			 board[3] == symbol && board[4] == symbol && board[5] == symbol ||		
			 board[6] == symbol && board[7] == symbol && board[8] == symbol ||
			 board[1] == symbol && board[4] == symbol && board[7] == symbol ||
			 board[0] == symbol && board[3] == symbol && board[6] == symbol ||
			 board[2] == symbol && board[5] == symbol && board[8] == symbol ||
			 board[0] == symbol && board[4] == symbol && board[8] == symbol ||
			 board[2] == symbol && board[4] == symbol && board[6] == symbol 
				true
		else
			false
		end
end

end