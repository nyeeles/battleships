class Ship

  def initialize(length=1)
    @hit = false
    @sunk = false
    @length = length
    @lives_left = @length
  end

  def hit?
    @hit
  end

   def hit!
    @hit = true
    remove_a_life!
    sink_if_no_lives_left!
    self
  end

  def sink_if_no_lives_left!
    lives_left == 0 ? @sunk=true : @sunk
  end

  def sunk?
    @sunk
  end

  def remove_a_life!
    @lives_left -= 1
  end

  def length?
    @length
  end

  def lives_left
    @lives_left
  end

end