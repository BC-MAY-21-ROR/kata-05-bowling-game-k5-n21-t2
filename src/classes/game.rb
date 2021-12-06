# frozen_string_literal: true

require_relative 'spare'
require_relative 'strike'
class Game
  # Initialize the rolls array
  def initialize
    @rolls = []
  end

  # Fill the rolls arraay with pins
  def roll(pins)
    @rolls << pins
  end

  # Calculate total score
  def score
    score = 0
    frame = 0
    # Iterate in the 10 frames
    10.times do
      strike = Strike.new(frame)
      spare = Spare.new(frame)
      if strike.a_strike?(@rolls)
        score += 10 + strike.strike_bonus(@rolls)
        frame += 1
      elsif spare.a_spare?(@rolls)
        score += 10 + spare.spare_bonus(@rolls)
        frame += 2
      else
        score += sum_of_balls_in_frame(frame)
        frame += 2
      end
    end
    score
  end

  def sum_of_balls_in_frame(frame)
    @rolls[frame] + @rolls[frame + 1]
  end
end
