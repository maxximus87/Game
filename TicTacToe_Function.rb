class Board

	attr_accessor :board

	  	def initialize
    		@board = board
    	end

	board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

		def empty_ttt_board
			" #{board[0]} | #{board[1]} | #{board[2]} "
			"-----------"
			" #{board[3]} | #{board[4]} | #{board[5]} "
			"-----------"
			" #{board[6]} | #{board[7]} | #{board[8]} "
		end

end