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

#условный оператор 9
print "Ваш любимый язык программирования: "
langprog = gets.chomp
puts langprog == "Ruby" ? "Подлиза!" : "Скоро будет Ruby!"

#оператор выбора case
print "Ваш любимый язык программирования: "
langprog = gets.chomp
case langprog
when "Ruby"
	puts "Подлиза!"
when "C++"
	puts "Скоро будет Ruby!" #комментарий для C++
when "Prolog"
	puts "Скоро будет Ruby!" #комментарий для Prolog
when "C#"
	puts "Скоро будет Ruby!" #комментарий для C#
end

=begin
Задание 4
=end

#введение команды Ruby в irb
print "Введите команду Ruby (перед этим войдите в irb, нажав на Enter): "
gets
system("irb")
#введение команды ОС 
print "Введите команду OS: "
system(gets.chomp)

#введение команды Ruby в cmd с интепретированием фрагментов кода в ходе выполнения статически написанной программы
print "Введите команду Ruby: "
ruby_command = gets.chomp
print eval %[#{ruby_command}]

=begin
Задание 5
=end
		
ARGV.each do |arg|
	print arg.split('').map(&:to_i).inject(0){|sum, x| sum + x}
end

=begin
Задание 6 
=end
 
def sum_of_digits number
	number.split('').map(&:to_i).inject(0){|sum, x| sum + x} 
end 
 
def max_digit number
	number.split('').map(&:to_i).max 
end 
 
def min_digit number
	min = number[0].to_i 
	for i in (1...number.length) 
		elem = number[i].to_i 
		min = elem < min ? elem : min 
	end 
	min 
end 
 
def comp_of_digits number
	number.split('').map(&:to_i).inject(1){|comp, x| comp * x} 
end 
 
puts "Сумма цифр числа #{ARGV[0]} равна: #{sum_of_digits number}" 
puts "Произведение цифр числа #{ARGV[0]} равно #{comp_of_digits number}" 
puts "Максимальная цифра числа #{ARGV[0]} равна: #{max_digit number}" 
puts "Минимальная цифра числа #{ARGV[0]} равна: #{min_digit number}"

=begin
Задание 7
=end

$gen_divi = lambda { |num1, num2|
	for divider in (2..num2)
			if num1 % divider == 0 && num2 % divider == 0 then
				return true
			end
	end
	return false }

def check number1, number2
	$gen_divi.call(number1, number2)
end

def even_non_coprime_numbers number
	counter = 0
	return 0 if number == 1.abs || number == 0
	2.step(number.to_i-1, 2) { |num| counter += 1 if check(number, num) == true}
	counter
end

number = ARGV[0]

def max_digit_non_multiple3 number
	number.split('').map(&:to_i).select {|elem| elem % 3 != 0}.max
end

def min_o_d number
	for divider in (2..number)
		return divider if number % divider == 0 
	end
end

def max_non_coprime_number number
	minod = min_o_d number
	max = 0
	left = minod + 1
	for elem in (left..number)
		if check(number, elem) == true && elem > max && elem % minod != 0 then
			max = elem
			puts max
		end
	end
	puts "Максимальное число невзаимно простое с #{number} и некратное его наименьшему делителю #{minod} равно: #{max}"
	max
end

def sum_of_digits_smaller5 number
	sum = number.split('').map(&:to_i).select { |dig| dig < 5 }.inject { |res, elem| res + elem }
	puts "Сумма цифр числа #{number}, меньших 5 равна: #{sum}"
	sum
end


if ARGV.length == 0
	puts "Hello World!"
else
	arg = ARGV[1].to_i
	number = ARGV[0]
	case arg
		when 1
			puts "Сумма цифр числа #{ARGV[0]} равна: #{sum_of_digits number}"
		when 2
			puts "Максимальная цифра числа #{ARGV[0]} равна: #{max_digit number}"
		when 3
			puts "Минимальная цифра числа #{ARGV[0]} равна: #{min_digit number}"
		when 4
			puts "Произведение цифр числа #{ARGV[0]} равно #{comp_of_digits number}"
		when 5
			puts "Количество чётных чисел невзаимно простых с #{ARGV[0]} равно: #{even_non_coprime_numbers number.to_i}"
		when 6 
			puts "Максимальная цифра числа #{number}, которая некратна 3 равна: #{max_digit_non_multiple3 number}"
		when 7
			puts "Результатом 7 метода при аргументе #{number} является: #{sum_of_digits_smaller5(number) * max_non_coprime_number(number.to_i)}"
	end
end
	
=begin
Задание 8
=end
	
def info
	puts "В программу ДОЛЖНО передаваться ТОЛЬКО 2 параметра- натуральных числа, либо один параметр буква 'h':\nПервый параметр - число, передаваемое одному из 7 методов в качестве аргумента, либо буква h для вызова данной справки;\nВторой параметр - номер вызываемого метода от 1 до 7. Ниже приведены описания методов, соответствующих им номеров:\n1. Сумма цифр числа;\n2. Максимальная цифра числа;\n3. Минимальная цифра числа;\n4. Произведение цифр числа;\n5. Количество чётных чисел от 2 до заданного числа, не взаимно простых с заданным числом;\n6. Максимальная цифра заданного числа, которая некратна 3;\n7. Произведение максимального числа, не взаимно простого с данным, не делящегося на наименьший делитель исходного числа и суммы цифр числа, меньших 5"
end

if ARGV.length == 0
	puts "Вы не ввели ни одного параметра. Предоставляю вам справочные данные:\n"
	info
elsif ARGV.length == 1
	if ARGV[0] == "h"
		info
	elsif ARGV[0].match?(/\A\d+\z/) == false
		puts "Вы ввели 1 параметр из двух и он не является буквой 'h', ни натуральным числом и введённые 2 параметра ДОЛЖНЫ быть ТОЛЬКО числами. Предоставляю вам справочные данные:\n"
		info
	else
		puts "Вы ввели 1 натуральный числовой параметр из двух. Предоставляю вам справочные данные:\n"
		info
	end
elsif ARGV.length == 2
	if ARGV[0].match?(/\A\d+\z/) == true && ARGV[1].match?(/\A\d+\z/) == true
		arg = ARGV[1].to_i
		number = ARGV[0]
		case arg
			when 1
				puts "Сумма цифр числа #{ARGV[0]} равна: #{sum_of_digits number}"
			when 2
				puts "Максимальная цифра числа #{ARGV[0]} равна: #{max_digit number}"
			when 3
				puts "Минимальная цифра числа #{ARGV[0]} равна: #{min_digit number}"
			when 4
				puts "Произведение цифр числа #{ARGV[0]} равно #{comp_of_digits number}"
			when 5
				puts "Количество чётных чисел невзаимно простых с #{ARGV[0]} равно: #{even_non_coprime_numbers number.to_i}"
			when 6 
				puts "Максимальная цифра числа #{number}, которая некратна 3 равна: #{max_digit_non_multiple3 number}"
			when 7
				puts "Результатом 7 метода при аргументе #{number} является: #{sum_of_digits_smaller5(number) * max_non_coprime_number(number.to_i)}"
		end
	elsif ARGV[0].match?(/\A\d+\z/) == true && ARGV[1].match?(/\A\d+\z/) == true
		puts "Второй параметр должен быть натуральным числом от 1 до 7. Предоставляю вам справочные данные:\n"
		info
	elsif ARGV[0].match?(/\A\d+\z/) == false && ARGV[1].match?(/\A\d+\z/) == false
		puts "Оба переданных параметра не являются натуральными числами. Предоставляю вам справочные данные:\n"
		info
	elsif ARGV[0].match?(/\A\d+\z/) == false
		puts "Первый числовой параметр не является числом. Предоставляю вам справочные данные:\n"
		info
	elsif ARGV[1].match?(/\A\d+\z/) == false
		puts "Второй числовой параметр не является натуральным числом. Предоставляю вам справочные данные:\n"
		info
	end
else
	puts "Параметров не может быть более двух. Предоставляю вам справочные данные:\n"
	info
end
