require_relative "board.rb"

class Human
	attr_accessor	:marker

	def initialize(marker)
		@marker = marker		
	end

	
	def get_move(board)
		puts "Player #{marker}, pick a position 1 through 9."
		move = gets.chomp.to_i
		move = move - 1
			if board[move] == ""		
				move
			else
				puts "Try again, pick a VALID position."
				get_move(board)
			end
	end
end
