def minimal_element(a)
  min = a[-1]
  for element in a
    if element < min then 
      min = element
    end
  end
  return min
end


def fst_pol_el(a)
  for element in a
    if element > 0 then 
      return element
    end
  end
  return -1
end




meth = ARGV[-2]
trail = ARGV[-1]
mass = (File.readlines("#{trail}")).to_i
if meth == min then
  puts "Минимальный элемент массива"
  puts minimal_element(mass)
else
  puts "Первый положительный элемент массива"
  puts fst_pol_el(mass)
end
