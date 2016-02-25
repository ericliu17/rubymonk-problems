def random_select(array, n)
	result = []
	n.times do
		result << array[rand(array.size)]
	end
	result
end

test = [1, 2, 3, 4, 5]

puts random_select(test, 2)
