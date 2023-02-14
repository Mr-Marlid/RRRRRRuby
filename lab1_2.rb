def kol_del(a,x,kol)
	while a>x do 
		if a % x ==0 and x % 3 != 0 then
			kol += 1
		end
		x += 1
	end
	return kol
end


a = gets.chomp.to_i
kol = 0
sum = 0
pr = 1
puts kol_del(a,2,0)
