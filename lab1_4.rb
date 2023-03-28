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

def polozh_del()
  puts "Введите список чисел через запятую: "
  numbers = gets.chomp.split(",").map(&:to_i)

  divisors = []
  
  numbers.each do |num|
    (1..num).each do |divisor|
  # Если делитель положительный и не добавлен в список ранее, добавляем
      if num % divisor == 0 && divisor > 0 && !divisors.include?(divisor)
        divisors << divisor
      end
    end
  end
  return divisors
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

def kvadrat_lista(list)
  
  squares = list.select { |num| (0..10).include?(num2) && list.count(num) > 2 }
  return squares.map { |num| num2 }
end
puts "Введите номер задания (11, 23, 35, 47, 59)"
v = gets.chomp.to_i
if v == 11 then

  puts "Задание 11"
  mass = vvod_massiva()
  puts unique_el(mass)
elsif v == 23 then
  puts "Задание 23"
  mass = vvod_massiva()
  puts naim_el(mass)
elsif v == 35 then
  puts "Задание 35"
  mass = vvod_massiva()
  closest_element = vesh_el(mass)
  puts "Ближайший элемент в массиве это #{closest_element}"
elsif v == 47 then
  puts "Задание 47"
  
  divisors = polozh_del()
  puts "Положительные делители чисел:"
  puts divisors.join(", ")
elsif v == 59 then
  puts "Задание 59"
  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  res = kvadrat_lista(list)
  puts res
else 
  puts "Нет такого номера"
end
