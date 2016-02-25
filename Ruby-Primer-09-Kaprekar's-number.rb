def kaprekar?(k)
	k_sq = (k**2).to_s.split('')
	digits = k.to_s.size
	result = 0
	loop do k_sq.empty? ? break : result += k_sq.pop(digits).join.to_i
	end
	result == k
end

test = 297

puts kaprekar?(test)
