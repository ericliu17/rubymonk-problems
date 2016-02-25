def sum_of_cubes(a, b)
	(a..b).inject(0) { |result, num| result += num**3 }
end

def sum_of_cubes2(a, b)
	result = 0
	(a..b).to_a.each do |i|
		result += i**3
	end
	result
end

puts sum_of_cubes(1, 3)
# puts sum_of_cubes2(1, 3)
