def occurrences(str)
  str_arr = str.downcase.scan(%r{\w+})
  str_arr.uniq.inject({}) { |h, word| h.update(word => str_arr.count(word) )}
end

test = 'heavily; punctuated, string. which is quite heavily repeatedly repeating, repeating.'

p occurrences(test)
