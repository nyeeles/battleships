class Ship

  def initialize(length, name)
    @hit = false
    @sunk = false
    @length = length
    @lives_left = @length
    @name = name
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

###########################################

class Patrol < Ship
  SIZE = 2
  NAME = :patrol
  def initialize
    super(SIZE, NAME)
  end
end

class Destroyer < Ship
  SIZE = 3
  NAME = :destroyer
  def initialize
    super(SIZE, NAME)
  end
end

class Carrier < Ship
  SIZE = 4
  NAME = :carrier
  def initialize
    super(SIZE, NAME)
  end
end