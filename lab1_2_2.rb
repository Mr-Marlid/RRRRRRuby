def min_digit(a)
	min = 10
	return min_digit_2(a,min)
end

def min_digit_2(a,min)
	if a > 0 then 
		if min > a%10 then 
			min = a%10
		end
		min_digit_2(a/10,min)
	else
		return min
	end
end


a = gets.chomp.to_i
puts min_digit(a)