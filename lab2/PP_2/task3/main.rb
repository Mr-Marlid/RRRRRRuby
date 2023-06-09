require_relative '../task2/student.rb'
require_relative '../task2/short_student.rb'
require_relative 'data_list_student_short.rb'
require_relative 'data_table'

test1 = Student.from_string(1, 'Стрелков, Игорь, Иванович, https://github.com/Mr-Marlid, +7-918-040-86-01, -, -')
test2 = Student.from_string(2, 'Растахан, Рустам, Магомедович, https://github.com/ne_pocazival, -, @rerere, -')
test3 = Student.from_string(3, 'Папа, Мама, Я, https://github.com/semya, -, -, family@mail.ru')
test4 = StudentShort.from_object(test1)
test5 = StudentShort.from_object(test2)
test6 = StudentShort.from_object(test3)


student_arr = [test4, test5, test6]

data_list_1 = DataListStudentShort.new(student_arr)


puts data_list_1.get_data

puts "get_selected\n"
data_list_1.add_to_selection(2)
print "#{data_list_1.get_selected}\n"

data_list_1.add_to_selection([0, 1, 2])
print "#{data_list_1.get_selected}\n"

data_list_1.clear_selected
data_list_1.add_to_selection([2, 1, 0])
print "#{data_list_1.get_selected}\n"

puts 'get_names'
data_list_1.names.each { |attr| puts "#{attr[0]} #{attr[1]}" }

data_table = data_list_1.data
print "class: #{data_table.class}\trows: #{data_table.rows_size}\tcolumns: #{data_table.columns_size}\n"


rows = data_table.rows_size
columns = data_table.columns_size

(0...rows).each do |row|
  (0...columns).each { |col| print(data_table.item(row, col),' ')}
  puts
end
