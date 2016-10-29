require_relative "console_game.rb"
require_relative "board.rb"

game = Game.new(Human.new("X"), Human.new("O"))

until game.game_over?
	
	game.switch_players! 
    
    game.print_board
    
    move = game.get_move
    
    game.make_move(move)
    
    game.print_board

end

game.end_message

