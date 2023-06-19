require 'mysql2'

# Создаем клиент для подключения к базе данных MySQL
client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'mydatabase')

# Выполняем запрос на выборку данных
results = client.query("SELECT * FROM mytable")

# Обрабатываем результаты выборки
results.each do |row|
  puts row['column1']
end

# Закрываем соединение с базой данных
client.close
