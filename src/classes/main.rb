require_relative "game.rb"

newGame = Game.new

newGame.roll(10)
newGame.roll(3)
newGame.roll(4)

16.times do
  newGame.roll(0)
end

print(newGame.score)