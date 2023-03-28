def unique_el(mass)
  return arr.uniq.first
end

def naim_el(mass)
  return mass.min.first(2)
end

def vesh_el(mass)
  puts "Введите R"
  r = gets.chomp
  return mass.min_by { |x| (r-x).abs }
  
end

def vvod_massiva()
  puts "Введите размер массива"
  n = gets.chomp.to_i
  mass =  Array.new(n)
  puts "Введите элементы массива"
  for i in (0..n-1)
    mass[i] = gets.chomp.to_i
  end
  return mass
end

mass = vvod_massiva()
puts "Задание 11"
puts unique_el(mass)
puts "Задание 23"
puts naim_el(mass)
puts "Задание 35"
closest_element = vesh_el(mass)
puts "Ближайший элемент в массиве это #{closest_element}"
