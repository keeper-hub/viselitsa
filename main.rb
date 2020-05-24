current_path = "./" + File.dirname(__FILE__)

require current_path + "../encode.rb"
require current_path + "/class.rb"
require current_path + "/print_result.rb"
require current_path + "../lesson8/sklonenie.rb"
require current_path + "/word_reader.rb"
puts "игра виселица, v2.0"


reader = WordReader.new
result = PrintResult.new

game = Game.new

while

	game.get_letters

	result.get_word_print(game.letters, game.good_letters)
	result.print_status(game.letters, game.good_letters, game.bad_letters, game.errors)
	result.print_viselitsa(game.errors)
	
	game.get_user_input

	game.check_input

	result.get_word_print(game.letters, game.good_letters)
	result.print_status(game.letters, game.good_letters, game.bad_letters, game.errors)
	result.print_viselitsa(game.errors)

	game.check_result

end