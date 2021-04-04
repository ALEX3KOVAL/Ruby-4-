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
		File.new(path, "r:UTF-8").read.split()
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
Задание 6(4)
=end

res = ""
list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
list.sort_by {|elem| -elem}.each do |elem|
	res = res + list.index(elem).to_s + "-"
end
print "#{list}\n"
print res[...-1]

=begin
Задание 6(16)
=end

list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
list_max = list.max(2)
print list[list.index(list_max[1]) + 1...list.index(list_max[0])]
