require_relative 'player'
require_relative 'ship'
require_relative 'game'
class Grid

  def initialize
    @board = {}
    create_grid
  end
  
  attr_reader :board

  # def show_as_grid
  #   x_axis = (' A'..' J').to_a
  #   print "0 #{x_axis}\n"
  #   y_axis = 1
  #   board.values.each_slice(10) do|sea| 
  #   print "#{y_axis} #{sea}\n" 
  #   y_axis += 1
  #   end
  # end

  def create_grid
    (1..10).to_a.each do |column|
      ('A'..'J').to_a.each do |row|
        @board["#{row}#{column}"] = :sea
      end
    end
    board
  end

  def fire_at(coordinate)
      check(coordinate).hit! if board[coordinate] != :sea
  end

  def check(coordinate)
    board[coordinate]
  end

###############################################
  # BELOW NEEDS REFACTORING!

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

class PrimaryGrid < Grid

  def initialize(player)
    @player = Player.new(player)
    board
  end

  def show_as_grid
    x_axis = (' A'..' J').to_a
    print "0 #{x_axis}\n"
    y_axis = 1
    Grid.new.board.values.each_slice(10) do|sea| 
    print "#{y_axis} #{sea}\n" 
    y_axis += 1
    end
  end
end

class TrackingGrid < Grid
  def initialize(player)
    @player = Player.new(player)
    board
  end

  def show_as_grid
    x_axis = (' A'..' J').to_a
    print "0 #{x_axis}\n"
    y_axis = 1
    Grid.new.board.values.each_slice(10) do|sea| 
    print "#{y_axis} #{sea}\n" 
    y_axis += 1
    end
  end
end
