# frozen_string_literal: true

require_relative 'game'

new_game = Game.new

new_Game.roll(10)
new_Game.roll(3)
new_Game.roll(4)

16.times do
  new_game.roll(0)
end

print(new_game.score)
