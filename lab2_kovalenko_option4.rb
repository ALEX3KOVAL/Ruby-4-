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
