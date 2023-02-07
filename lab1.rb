name = gets
puts "Hello, #{name}"
puts "Kakoi?"
b = gets.chomp
if (b == "ruby") then
	puts "Podliza"
else 
	puts "Skoro ruby"
end
puts "Vvedite commandy OC"
b = gets.chomp
system(b)
