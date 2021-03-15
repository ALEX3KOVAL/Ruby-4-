#встроенный метод print печатает первый переданный ему аргумент на экран
print "Hello world!"

=begin
Задание 2
=end

print "Здравствуйте, #{ARGV[0]}!"

#получение наименований всех методов класса string
print "".methods()

#форматирование строки с использованием последовательности символов #{} для интерполирования значений в строку
print "Результатом сложения чисел 5 и 5 является #{5+5}"

#форматирование строки с использованием спецификатора %
print "Добрый день, %s! Вам %d лет?" % ARGV

#форматирование строки с использованием встроенного метода sprintf
print sprintf "Здравствуйте, %-20s! Вам %10d лет?", ARGV[0],20

=begin
Задание 3
=end

#условный оператор 1
print "Ваш любимый язык программирования: "
langprog = gets.chomp
if langprog == "Ruby" then
    puts "Подлиза!" #комментарий про Ruby
elsif langprog == "C++" then
    puts "Что-то про C++" #комментарий про C++
elsif langprog == "Prolog" then
    puts "Логика понятна?" #комментарий про Prolog
elsif langprog == "C#" then
    puts "Что-то про C#" #комментарий про C#
end

#условный оператор 2
print "Ваш любимый язык программирования: "
langprog = gets.chomp
if langprog == "Ruby" then
    puts "Подлиза!" #комментарий про Ruby
end
if langprog == "C++" then
    puts "Что-то про C++" #комментарий про C++
end
if langprog == "Prolog" then
    puts "Логика понятна?" #комментарий про Prolog
end
if langprog == "C#" then
    puts "Что-то про C#" #комментарий про C#
end

#условный оператор 3
print "Ваш любимый язык программирования: "
langprog = gets.chomp
puts "Подлиза!" if langprog == "Ruby"
puts "Скоро будет Ruby!" if langprog == "C++" #комментарий про C++
puts "Скоро будет Ruby!" if langprog == "Prolog" #комментарий про Prolog
puts "Скоро будет Ruby!" if langprog == "C#" #комментарий про C#

#условный оператор 4
podliza = Proc.new do print "Подлиза!" end
ruby = Proc.new do print "Скоро будет Ruby!" end
print "Ваш любимый язык программирования: "
langprog = gets.chomp
if langprog == "Ruby" #комментарий про Ruby
then podliza.call
elsif langprog == "C++" #комментарий про С++
then ruby.call
elsif langprog == "Prolog" #комментарий про Prolog
then ruby.call
elsif langprog == "C#" #комментарий про C#
then ruby.call
end

#условный оператор 5
print "Ваш любимый язык программирования: "
langprog = gets.chomp
unless langprog != "Ruby" then
		print "Подлиза!" #комментарий про Ruby
end
unless langprog != "C++" then
	print "Скоро будет Ruby!" #комментарий про C++
end
unless langprog != "Prolog" then
	print "Скоро будет Ruby!" #комментарий про Prolog
end
unless langprog != "C#" then
	print "Скоро будет Ruby!" #комментарий про C#
end

#условный оператор 6
print "Ваш любимый язык программирования: "
langprog = gets.chomp
unless langprog != "Ruby" then
	print "Подлиза!" #комментарий про Ruby
else
	unless langprog != "C++" then
		print "Скоро будет Ruby!" #комментарий про C++
	else
		unless langprog != "Prolog" then
			print "Скоро будет Ruby!" #комментарий про Prolog
		else
			print "Скоро будет Ruby!" #комментарий про C#
		end
	end
end

#условный оператор 7
print "Ваш любимый язык программирования: "
langprog = gets.chomp
print "Подлиза!" unless langprog != "Ruby"
print "Скоро будет Ruby!" unless langprog != "C++" #комментарий про C++
print "Скоро будет Ruby!" unless langprog != "Prolog" #комментарий про Prolog
print "Скоро будет Ruby!" unless langprog != "C#" #комментарий про C#

#условный оператор 8
podliza = Proc.new do print "Подлиза!" end
ruby = Proc.new do print "Скоро будет Ruby!" end
print "Ваш любимый язык программирования: "
langprog = gets.chomp
unless langprog != "Ruby" then
	podliza.call #комментарий про Ruby
else
	unless langprog != "C++" then
		ruby.call #комментарий про C++
	else
		unless langprog != "Prolog" then
			ruby.call #комментарий про Prolog
		else
			ruby.call #комментарий про C#
		end
	end
end

















