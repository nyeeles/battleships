class Grid

  def initialize
    @board = {}
    create_grid
  end

  def create_grid
    ('A'..'J').to_a.each do |letter|
      (1..10).to_a.each do |number|
        @board["#{letter}#{number}"] = "sea "
      end
    end
  end

  def board
    @board
  end

  def place(ship,position)
    @board[position] = ship
    board
  end

  def check(coordinate)
    @board[coordinate]
  end

  def fire_at(coordinate)
    if check(coordinate) == "sea "
      "Miss"
    else
      check(coordinate).hit!
    end
  end

end
