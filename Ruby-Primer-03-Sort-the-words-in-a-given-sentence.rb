def sort_string(string)
	string.split.sort { |x, y| x.length <=> y.length}.join(' ')
end

test = 'Sort words in a sentence'

puts sort_string(test)
