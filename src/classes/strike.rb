class Strike
  def initialize(frame)
    @frame = frame
  end

  def is_a_strike?(rolls) 
    rolls[@frame] == 10
  end

  def strike_bonus(rolls) 
    rolls[@frame + 1] + rolls[@frame + 2]
  end
end