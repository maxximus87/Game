#require_relative "TTT_functions.rb"

#display board with instructions. assign player to a character. ask player to pick position. display board with new input. ask player 2 to pick position. redisplay board with new input. repeat till board full or 3 in a row. declare winner. need to figure out winning combinations. 
puts ""
puts "Welcome to tic tac toe!"
puts ""
puts"This board accepts either 'X' or 'O' in the position you choose (1 through 9) when it is your turn." 
board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
#def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

#puts empty_ttt_board(board)
board = ["", "", "", "", "", "", "", "", ""]
puts ""
puts "Player one, you will be 'X' and you may now choose your first positon. Please type a number between 1 and 9."
player1_position = gets.chomp
board[(player1_position.to_i)-1] << "X" 

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

puts "And player two will be 'O' so please choose your first position by typing a different number between 1 and 9. You may not choose #{player1_position}."

player2_position = gets.chomp
  if [(player2_position.to_i)-1] !== " "
		board[(player2_position.to_i)-1] << "O"
  elsif	"Please choose an empty position, that position is filled."
   		player2_position = gets.chomp
  else		board[(player2_position.to_i)-1] << "O"
  end

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "


