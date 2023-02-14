def kol_del(a,min)
	if a > 0 then
		if min > a%10 then
			min = a%10
		end
		kol_del(a/10,min)
	else
		return min
	end
end


a = gets.chomp.to_i
kol = 0
sum = 0
pr = 1
puts kol_del(a,10)