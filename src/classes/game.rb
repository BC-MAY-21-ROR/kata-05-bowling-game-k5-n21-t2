class Game
  def initialize #Initialize the rolls array
    @rolls = []
  end

  def roll(pins) #Fill the rolls arraay with pins
    @rolls << pins
  end

  def score #Calculate total score
    score = 0
    frame = 0
    10.times do #Iterate in the 10 frames
      if strike?(frame)
        score += 10 + strike_bonus(frame)
        frame += 1
      

  end

  def strike?(frame) #Validate if the frame have a strike
    @rolls[frame] == 10
  end

  def strike_bonus(frame) #Calculate the strike bonus
    @rolls[frame + 1] + @rolls[frame + 2]
  end

end