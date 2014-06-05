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

  def fire_at(coordinate)
    if check(coordinate) == "sea "
      board[coordinate] = "missed"
    else
      check(coordinate).hit!
      board[coordinate] = "hit"
    end
  end

   def check(coordinate)
    board[coordinate]
  end

###############################################
  # BELOW NEEDS REFACTORING!

  def insert(ship,position)
    board[position] = ship
    board
  end

  def insert_vertical(ship, position)
    if ship.length? == 2
      board[position] = ship
      board[position.next] = ship
    elsif ship.length? == 3
      board[position] = ship
      board[position.next] = ship
      board[position.next.next] = ship
    end
    board
  end 

  def insert_medium_horizontal(ship, position1, position2)
    board[position1] = ship
    board[position2] = ship
    board
  end

  def insert_large_horizontal(ship, position1, position2, position3)
    board[position1] = ship
    board[position2] = ship
    board[position3] = ship
    board
  end
end
