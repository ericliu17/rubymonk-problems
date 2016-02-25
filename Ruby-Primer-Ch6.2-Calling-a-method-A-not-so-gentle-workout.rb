def add(*numbers)
  numbers.inject { |result, i| result += i }
end

def subtract(*numbers)
  numbers.inject(numbers[0] * 2) { |result, i| result -= i }
end

def calculate(*arg)
	operation = arg[-1].is_a?(Hash) ? arg.pop : {}
	operation[:add] = true if operation.empty?
	return add(*arg) if operation[:add]
	return subtract(*arg) if operation[:subtract]
end

puts calculate(4,5)
