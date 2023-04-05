require_relative 'game'
require_relative 'players'
require_relative 'questions'
require_relative 'turns'

game = Game.new

puts "Welcome to the Math Game!"

loop do
  game.play_turn
  break if game.game_over?
end

game.display_result
