def palindrome?(sentence)
	sentence.gsub(' ', '').downcase == sentence.gsub(' ', '').downcase.reverse
end

def palindrome2?(sentence)
	reversed = []
	sentence.downcase.split.reverse.each do |word|
		reversed << word.reverse
	end
	sentence.downcase.split.join == reversed.join
end

test = 'Never odd or even'

puts palindrome?(test)
# puts palindrome2?(test)
