a = gets.chomp.to_i
x = 0
min = 10
while a>0 do
	x = a%10
	if x<min then min = x
	end
	a = a / 10
end
puts min
