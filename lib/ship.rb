class Ship

  def initialize
    @hit = false
    @sunk = false
  end

  def hit?
    @hit
  end

  def sunk?
    @sunk
  end

  def hit!
    @hit = true
    @sunk = true
    self
  end

  def length(length)
    ship_array
  end

end