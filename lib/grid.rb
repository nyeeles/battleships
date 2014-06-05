class Grid

  def initialize
    @board = {}
    create_grid
  end
  
  attr_reader :board

  def show_as_grid
    x_axis = (' A'..' J').to_a
    print "0 #{x_axis}\n"
    y_axis = 1
    board.values.each_slice(10) do|sea| 
    print "#{y_axis} #{sea}\n" 
    y_axis += 1
    end
  end

  def create_grid
    (1..10).to_a.each do |column|
      ('A'..'J').to_a.each do |row|
        @board["#{row}#{column}"] = :sea
      end
    end
  end

  def fire_at(coordinate)
    if check(coordinate) == :sea
      board[coordinate] = :miss
    else
      check(coordinate).hit!
      board[coordinate] = :hit
    end
  end

  def check(coordinate)
    board[coordinate]
  end

###############################################
  # BELOW NEEDS REFACTORING!

  def insert(ship, coordinate)
    board[coordinate] = ship
    board
  end

  def insert_horizontal(ship, coordinate)
    array = [coordinate].concat(1.upto(ship.length? - 1).map do |i|
      coordinate = ["#{coordinate[0]}".next.concat("#{coordinate[1]}")].join
    end)
    array.each {|cell| board[cell] = ship}
  end

  def insert_vertical(ship, coordinate)
    array = [coordinate].concat(1.upto(ship.length? - 1).map do |i|
      coordinate = [coordinate.next].join
    end)
    array.each {|cell| board[cell] = ship}
  end
end