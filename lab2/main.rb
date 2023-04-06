require_relative 'Student.rb'

test1 = Student.new({name:'Дмитрий', surname:'Петренко', lastname:'Алексеевич', phone:'+7 999 999 99 99',
                     telegram:'@лололошка)'})

test2 = Student.new({name:'Любовь', surname:'Амарян', lastname:'Руслановна',
                     telegram:'@lublu)'})
puts test1.to_s
puts test2.to_s
