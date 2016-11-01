require_relative "board.rb"
require_relative "console_human.rb"
require_relative "console_cpu_sequence.rb"
require_relative "console_cpu_random.rb"


class Game

	attr_accessor :board, :player1, :player2, :current_player

	def initialize(player1, player2)
		@board = Board.new
		@player1 = player1
		@player2 = player2
		@current_player = player2
	end

	def print_board

		puts ""
		puts "\t\t\t\t\t\t #{board.board[0]} | #{board.board[1]} | #{board.board[2]}"
		puts "\t\t\t\t\t\t--------"
		puts "\t\t\t\t\t\t #{board.board[3]} | #{board.board[4]} | #{board.board[5]}"
		puts "\t\t\t\t\t\t--------"
		puts "\t\t\t\t\t\t #{board.board[6]} | #{board.board[7]} | #{board.board[8]}"
		puts ""
		puts ""
		puts "#{current_player.marker} --- Its your turn."

	end

	def get_move
		current_player.get_move(board.board)
	end

	def make_move(move)
		board.update(move, current_player.marker)
	end

	def game_over?
		board.winner?(current_player.marker) || board.full_board?

	end

	def end_message
		if board.winner?(current_player.marker)
			puts "#{current_player.marker} wins!"
		else
			board.full_board?
			puts "tie!"
		end
	end

	def make_seq_move(move)

		cpu = move + 1
		unless board.valid_space?(cpu) == ""
			make_seq_move(cpu)
		end
		# if cpu >= 9
		# 	cpu = 0
		# end
	end



	def change_player
		if current_player == player1
			@current_player = player2
		elsif current_player == player2
			@current_player = player1
			
		end
	end


end