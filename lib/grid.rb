class Grid

  def initialize
    @board = {}
    create_grid
  end
  
  attr_reader :board

  def create_grid
    ('A'..'J').to_a.each do |letter|
      (1..10).to_a.each do |number|
        @board["#{letter}#{number}"] = "sea "
      end
    end
  end

  def place(ship,position)
    @board[position] = ship
    board
  end

  def place_medium(ship,position)
    @board[position] = ship
    @board[position.next] = ship
    board
  end

  def place_medium_horizontally(ship, position1, position2)
    @board[position1] = ship
    @board[position2] = ship
    board
  end

  def place_long(ship,position)
    @board[position] = ship
    @board[position.next] = ship
    @board[position.next.next] = ship
    board
  end

  def place_long_horizontally(ship, position1, position2, position3)
    @board[position1] = ship
    @board[position2] = ship
    @board[position3] = ship
    board
  end

  def check(coordinate)
    @board[coordinate]
  end

  def fire_at(coordinate)
    if check(coordinate) == "sea "
      @board[coordinate] = "missed"
    else
      check(coordinate).hit!
      @board[coordinate] = "hit"
    end
  end
end
