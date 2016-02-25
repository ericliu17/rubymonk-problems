class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    array.inject(initial_value) { |total, i| total += block_given? ? yield(i) : i }
  end
end

test = [1,2,3]

p MyArray.new(test).sum
p MyArray.new(test).sum(10)
p MyArray.new(test).sum { |i| i**2 }
