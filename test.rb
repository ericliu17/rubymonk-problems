puts 2.between?(1,2)
puts "I am a Rubyist".index 'R'

=begin
def string_length_interpolater(incoming_string)
  puts "The string you just gave me has a length of #{incoming_string.length}."
end

puts 'Enter String.'
incoming_string = gets.chomp
string_length_interpolater(incoming_string)
=end

=begin
def check_sign(number)
  if number > 0
    puts "#{number} is positive"
  else
    puts "#{number} is negative"
  end
end
check_sign(1)
=end

problem1 = ["apple", "banana", "mango"]

def length_finder(input_array)
	result = []
	input_array.each do |i|
		result.push i.length
	end
	result
end

def length_finder_2(input_array)
	input_array.map { |element| element.length  }
end

puts length_finder_2(problem1)

problem2 = 'Do or do not... there is no try.'

def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end

puts find_frequency(problem2, 'do')

problem3 = "Sort words in a sentence"

def sort_string(string)
  string.split(' ').sort{ |x,y| y.length <=> x.length }.join(' ')
end

puts sort_string(problem3)

problem4 = [1, 2, 3, 4, 5]

def random_select(array, n)
	result = []
	n.times do
		result << array[rand(array.length)]
	end
	result
end

puts random_select(problem4, 2)

problem5 = "Never odd or even"

def palindrome?(sentence)
  sentence.gsub(' ', '').downcase == sentence.gsub(' ', '').downcase.reverse
end

puts palindrome?(problem5)

def sum_of_cubes(a, b)
  (a..b).inject(0) {|result, num| result + num**3}
end

puts sum_of_cubes(1,3)

problem7 = [1,2,2,3,3,4,5]

def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end

puts non_duplicated_values(problem7)

problem8 = ['a',1,:b]

def array_of_fixnums?(array)
  array.all? { |i| i.is_a? Fixnum }
end

puts array_of_fixnums?(problem8)

def add(*numbers)
  numbers.inject(0) { |sum, num| sum + num }
end

def subtract(*numbers)
	current = numbers.shift
  numbers.inject(current) { |diff, num| diff - num }
end

def calculate(*arg)
	options = arg[-1].is_a?(Hash) ? arg.pop : {}
	options[:add] = true if options.empty?
  return add(*arg) if options[:add]
  return subtract(*arg) if options[:subtract]
end

puts subtract(4,5)

problem9 = 297

def kaprekar?(k)
	k_sq = (k**2).to_s.split('')
	k_digits = k.to_s.length
	result = 0
	loop do
		if k_sq != []
	  	result += k_sq.pop(k_digits).join.to_i
	  else
	  	break
	  end
  end
  k == result
end

puts kaprekar?(problem9)
