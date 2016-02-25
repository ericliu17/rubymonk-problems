def non_duplicated_values(values)
	values.select { |i| values.count(i) == 1 }
end

test = [1,2,2,3,3,4,5]

puts non_duplicated_values(test)
