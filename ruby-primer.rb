# RUBY PRIMER PROBLEMS IN RUBYMONK

# 1 - FIND THE LENGTH OF STRINGS IN AN ARRAY

test1 = ['Ruby','Rails','C42']

def length_finder(input_array)
	input_array.map { |word| word.length }
end

def length_finder_2(input_array)
	result = []
	input_array.each do |word|
		result << word.length
	end
	result
end

puts length_finder(test1)
# puts length_finder_2(test1)

# 2 - FIND THE FREQUENCY OF A STRING IN A SENTENCE

test2 = 'Do or do not... there is no try.'

def find_frequency(sentence, word)
	sentence.downcase.split.count(word.downcase)
end

puts find_frequency(test2, 'Do')

# 3 - SORT THE WORDS IN A GIVEN SENTENCE

test3 = 'Sort words in a sentence'

def sort_string(string)
	string.split.sort { |x, y| x.length <=> y.length}.join(' ')
end

puts sort_string(test3)

# 4 - SELECT RANDOM ELEMENTS FROM AN ARRAY

test4 = [1, 2, 3, 4, 5]

def random_select(array, n)
	result = []
	n.times do
		result << array[rand(array.size)]
	end
	result
end

puts random_select(test4, 2)

# 5 - PALINDROMES

test5 = 'Never odd or even'

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

puts palindrome?(test5)
# puts palindrome2?(test5)

# 6 - COMPUTE SUM OF CUBES FOR GIVEN RANGE

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

# 7 - FIND NON-DUPLICATE VALUES IN AN ARRAY

test7 = [1,2,2,3,3,4,5]

def non_duplicated_values(values)
	values.select { |i| values.count(i) == 1 }
end

puts non_duplicated_values(test7)

# 8 - CHECK IF ALL ELEMENTS IN AN ARRAY ARE FIXNUM

test8 = [1,2,3]

def array_of_fixnums?(array)
	array.all? { |i| i.is_a? Fixnum }
end

puts array_of_fixnums?(test8)

# 9 - KAPREKAR'S NUMBER

test9 = 297

def kaprekar?(k)
	k_sq = (k**2).to_s.split('')
	digits = k.to_s.size
	result = 0
	loop do k_sq.empty? ? break : result += k_sq.pop(digits).join.to_i
	end
	result == k
end

puts kaprekar?(test9)

# 10 - ENOUGH CONTRAST?

class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
  	(299*r + 587*g + 114*b) / 1000
  end

  def brightness_difference(another_color)
  	(brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
  	(r - another_color.r).abs + (g - another_color.g).abs + (b - another_color.b).abs
  end

  def enough_contrast?(another_color)
  	brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end

color1 = Color.new(42,21,58)
color2 = Color.new(100,200,255)
puts color1.brightness_index
puts color2.brightness_index
puts color1.brightness_difference(color2)
puts color1.hue_difference(color2)
puts color1.enough_contrast?(color2)

#11

