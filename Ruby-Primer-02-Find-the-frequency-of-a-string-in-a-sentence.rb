def find_frequency(sentence, word)
	sentence.downcase.split.count(word.downcase)
end

test = 'Do or do not... there is no try.'

puts find_frequency(test, 'Do')
