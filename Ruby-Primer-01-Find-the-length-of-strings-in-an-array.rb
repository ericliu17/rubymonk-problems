def length_finder(input_array)
	input_array.map { |word| word.length }
end

def length_finder2(input_array)
	result = []
	input_array.each do |word|
		result << word.length
	end
	result
end

test = ['Ruby','Rails','C42']

puts length_finder(test)
# puts length_finder2(test)
