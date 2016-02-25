module Perimeter
  def perimeter
    sides.inject { |result, i| result += i }
  end
end

module Area
	def area
		sides[0] * sides[1]
	end
end

class Rectangle
  include Perimeter, Area
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter, Area
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

puts Rectangle.new(2,3).perimeter
puts Square.new(5).area
