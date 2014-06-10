require_relative 'player'
require_relative 'ship'
require_relative 'game'
class Grid

  def initialize
    @board = {}
    create_grid
    @all_ships ||= []
  end
  
  attr_reader :board
  attr_reader :all_ships


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
        @board["#{row}#{column}"] = :-
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
    @cells = [coordinate].concat(1.upto(ship.length? - 1).map do |i|
      coordinate = ["#{coordinate[0]}".next.concat("#{coordinate[1]}")].join
    end)
    @cells.each {|cell| board[cell] = ship}
    store_all_inserted_ships
  end

  def store_all_inserted_ships
    all_ships << @cells
  end

  def insert_vertical(ship, coordinate)
    @cells = [coordinate].concat(1.upto(ship.length? - 1).map do |i|
      coordinate = [coordinate.next].join
    end)
    @cells.each {|cell| board[cell] = ship}
    store_all_inserted_ships
  end
end

class PrimaryGrid < Grid

  def show_as_grid
    x_axis = ('A'..'J').to_a
    print "0 #{x_axis}\n"
    y_axis = 1
    Grid.new.board.values.each_slice(10) do|sea| 
    print "#{y_axis} #{sea}\n" 
    y_axis += 1
    end
  end
end

class TrackingGrid < Grid

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
