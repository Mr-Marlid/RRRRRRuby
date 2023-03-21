def kolvo_del_ne_krat_3(a)
	x = 2
	kol = 0
	while a>x do
		if a % x == 0 and x % 3 != 0 then
			kol += 1
		end
		x += 1
	end
	return kol
end


a = gets.chomp.to_i
puts kolvo_del_ne_krat_3(a)