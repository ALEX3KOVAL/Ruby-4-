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