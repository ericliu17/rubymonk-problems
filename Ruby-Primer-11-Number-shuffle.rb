def number_shuffle(number)
	results = []
	digits = number.to_s.split('')
	target = (1..digits.size).inject { |result, i| result *= i }
	results << digits.shuffle.join.to_i while results.uniq.size != target
	results.uniq.sort
end

def number_shuffle2(number)
	results = []
	digits = number.to_s.split('')
	target = (1..digits.size).inject { |result, i| result *= i }
	loop do
		if results.size != target
			results << digits.shuffle.join.to_i
			results = results.uniq
		else
			break
		end
	end
	results.sort
end

def number_shuffle3(number)
	results = []
	digits = number.to_s.split('')
	target = (1..digits.size).inject { |result, i| result *= i }
	loop do
		if results.size != target
			num = digits.shuffle.join.to_i
			if !results.any? {|i| i == num}
				results << num
			end
		else
			break
		end
	end
	results.sort
end

test = 123

puts number_shuffle(test)
#puts number_shuffle2(test)
#puts number_shuffle3(test)
