def prostota(x,y,z)
	if x % z == 0 and y % z == 0 then
		return 0
	else
		if x > z and y > z then
			prostota(x,y,z+1)
		else
			return 1
		end
	end
end





a = gets.chomp.to_i
sum = 0
sum_dig = 0
pr_dig = 1
x = a
while x > 0 do 
	x1 = x%10
	sum_dig += x1
	pr_dig *= x1
	x /= 10
end
x = 2
while a>x do 
	if a % x == 0 and prostota(x,sum_dig,2) == 1 and prostota(x,pr_dig,2) == 0 then
		sum += x
	end
	x += 1
end
puts sum
