=begin
Задание 1
=end

def min_among_elements(list)
	list.min
end

def max_among_elements(list)
	list.max
end

def summ_of_elements(list)
	list.inject(0) {|sum, x| sum + x}
end

def product_of_elements(list)
	list.inject(1) {|sum, x| sum * x}
end

lt = gets.chomp.split.map! {|elem| elem.to_i}

puts "Минимальный элемент введённого списка равен -- #{min_among_elements(lt)}"
puts "Максимальный элемент введённого списка равен -- #{max_among_elements(lt)}"
puts "Сумма всех элементов списка -- #{summ_of_elements(lt)}"
print "Произведение всех элементов списка -- #{product_of_elements(lt)}"

=begin
Задание 2
=end

def new_summ_of_elements(list)
	list.sum
end

def new_product_of_elements(list)
	list.reduce(:*)
end

lt = gets.chomp.split.map! {|elem| elem.to_i}

puts "Сумма всех элементов списка -- #{new_summ_of_elements(lt)}"
print "Произведение всех элементов списка -- #{new_product_of_elements(lt)}"

=begin
Задание 3
=end

#Ввод массива с клавиатуры размером, переданным в ARGV
def input()
	arr = []
	n = ARGV[0].to_i
	puts "Введите элементы:"
	ARGV.clear
	n.times do 
		arr << gets.chomp
	end
	print arr
end

input()

arr = []
#1 способ добавления элемента в массив: через оператор <<
arr << "Первый элемент"
print arr

#2 способ добавления элемента в массив: используя метод push класса Array 
arr.push(2)
print arr

#3 способ добавления элемента в массив: использую следующий индекс массива
arr[2] = 'third element'
print arr

#4 способ добавления элемента в массив: используя метод unshift класса Array (добавляет элемент в начало массива)
arr.unshift('nullelement')
print arr

#5 способ добавления элемента в массив: используя метод insert класса Array
arr.insert(4, 'четвертий елемент')
print arr

=begin
Задание 4
=end

def read_from_file(path)
	if File.exist?(path)
		File.new(path, "r:UTF-8").read.split().map(&:to_i)
	else "Файл, с указанным путем #{path} не существует!"
	end
end

print read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))

=begin
Задание 5
=end

def info
	puts "В программу необходимо передавать один параметр. Варианты параметров:\nx1_x2_x3_..._xn - z ввод элементов будущего списка, разделённых вертикальной чертой;\n'C:\\\\' - пользователем вводится некоторый путь к файлу, из которого требуется считать список."
end

if ARGV.length == 0
	puts "Вы не ввели ни одного параметра. Предоставляю вам справочные данные:\n"
	info
elsif ARGV.length == 1
	print ARGV[0]
	if ARGV[0].include?('\\') == true
		print read_from_file(ARGV[0].gsub('\\', '/'))
	else print ARGV[0].split('_')
	end
else puts "Параметров не может быть более двух. Предоставляю вам справочные данные:\n"
	info
end

=begin
Задание 8
=end

print read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/')).max

=begin
Задание 9(4)
=end

def ex_4()
	print "Введите строку: "
	str = gets.chomp
	if str.reverse() == str
		print "#{str} является палиндромом!\n"
	else print "#{str} не является палиндромом!\n"
	end
end


=begin
Задание 9(11)
=end
def ex_11()
	print "Введите строку -- "
	print "Количество слов в строке равно -- #{gets.chomp.split.length}\n"
end


=begin
Задание 15
=end

def ex_15()
	print "Введите число -- "
	print "Количество цифр в числе равно -- #{gets.chomp.to_i.to_s.length}\n"
end

print "Под какими номерами(ом) задачи(а), решение которых вы бы хотели увидеть? \nВведите строку в формате num1_num2 или просто num, если хотите увидеть решение одной задачи: "
gets.chomp.split('_').each { |elem|
	eval("ex_#{elem}")
}

=begin
Задание 10
=end

reg = /(((^([1-2][0-9]){1}\s|^([3][0-1]){1}\s|^([1-9]){1}\s|^([0][1-9]){1}\s)((январ|июл|апрел|июн|сентябр|октябр|ноябр|декабр)(ь|я){1}\s|(март|август)(а)?\s)|(^([1-2][0-9]){1}\s|^([1-9]){1}\s|^([0][1-9]){1}\s)(феврал(ь|я){1}\s))([12][90][0-9][0-9]){1}$)/
puts "31 февраль 2020" =~ reg ? "Строка является корректной" : "Строка НЕ является корректной" # => Строка НЕ является корректной

=begin
Задание 13
=end

def read_from_file_lines(path)
	if File.exist?(path)
		File.new(path, "r:UTF-8").readlines.each do |line| line.chomp! end
	else "Файл, с указанным путем #{path} не существует!"
	end
end

puts read_from_file_lines("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/')).sort_by {|elem| elem.split.length}

=begin
Задание 14
=end

$my_lambda = lambda { |arg|
		count = 0
		arg.each do |elem|
			begin
				Integer(elem)
				count = 0
			rescue
				count += 1
			end
		end
		count	
	}

puts read_from_file_lines("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/')).sort_by {|elem| $my_lambda.call(elem.split)}
