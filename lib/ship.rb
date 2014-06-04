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

  def sink!
    if lives_left == 0
      @sunk = true
    end
  end

  def sunk?
    @sunk
  end

  def hit!
    @hit = true
    remove_life!
    sink!
    self
  end

  def remove_life!
    @lives_left -= 1
  end

  def length?
    @length
  end

  def lives_left
    @lives_left
  end

end