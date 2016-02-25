def array_of_fixnums?(array)
	array.all? { |i| i.is_a? Fixnum }
end

test = [1,2,3]

puts array_of_fixnums?(test)
