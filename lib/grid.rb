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
      "Miss"
    else
      check(coordinate).hit!
    end
  end

  # def test(position)
  #   # 0.upto(length - 1).map do |i| 
  #   #   [(input.split('')[0].ord + i).chr, input.split('')[1]].join
  #   # 
  #   [position.split('')[0].next, position.split('')[1]].join
  # end

end
