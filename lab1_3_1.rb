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

def vvod_massiva()
  puts "Vvedite razmer massiva"
  n = gets.chomp.to_i
  mass =  Array.new(n)
  puts "Vvedite elemenTbl massiva"
  for i in (0..n-1)
    mass[i] = gets.chomp.to_i
  end
  return mass
end

mass = vvod_massiva()
puts "Минимальный элемент массива"
puts minimal_element(mass)
puts "Первый положительный элемент массива"
puts fst_pol_el(mass)
