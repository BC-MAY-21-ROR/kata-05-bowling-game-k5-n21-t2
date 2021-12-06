class Spare
  def initialize(frame)
    @frame = frame
  end
  def is_a_spare?(rolls)
    rolls[@frame] + rolls[@frame + 1] == 10
  end

  def spare_bonus(rolls)
    rolls[@frame + 2]
  end
end