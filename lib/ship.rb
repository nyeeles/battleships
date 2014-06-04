class Ship

  def initialize(length=1)
    @hit = false
    @sunk = false
    @length = length
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

  def length?
    @length
  end

end