def read_from_file(path)
	if File.exist?(path)
		f = File.new(path, "r:UTF-8")
		ls = f.read.split().map(&:to_i)
	else "Файл, с указанным путем #{path} не существует!"
	end
	f.close
	ls
end

=begin
Задание 6(4)
=end
def ex_4()
	res = ""
	list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
	list.sort_by {|elem| -elem}.each do |elem|
		res = res + list.index(elem).to_s + "-"
	end
	print "Результат задания 4 -- #{res[...-1]}\n"
end

=begin
Задание 6(16)
=end
def ex_16()
	list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
	list_max = list.max(2)
	if list.index(list_max[0]) > list.index(list_max[1])
		puts "Элементы между первым и вторым максимальными -- #{list[list.index(list_max[1]) + 1...list.index(list_max[0])]}"
	else print "Элементы между первым и вторым максимальными -- #{list[list.index(list_max[0]) + 1...list.index(list_max[1])]}\n"
	end
end

=begin
Задание 6(28)
=end
def ex_28()
	list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
	max = list.index(list.max)
	min = list.index(list.min)
	if max > min
		puts "Элементы между первым и последним максимальными -- #{print list[min + 1...max]}"
	else puts "Элементы между первым и последним максимальными -- #{list[max + 1...min]}"
	end
end

=begin
 Задание 6(40)
=end
def ex_40()
	list = read_from_file("C:\\Users\\User\\Desktop\\file.txt".gsub!('\\','/'))
	print "#{list}\n"
	puts "Минимальный чётный элемент -- #{list.select {|elem| elem % 2 == 0}.min}"
end

=begin
Задание 6(52)	
=end
def prime_check num
	(2...num).each do |elem|
		return false if num % elem == 0
	end
	false if num == 1
	true
end

def calc_multipliers num
	multipliers = []
	(2...num).each do |elem|
		if prime_check(elem) == true
			while num % elem == 0 && num > 1
				num /= elem
				multipliers << elem
			end
		end
	end
	multipliers
end

def ex_52() 
	print "Введиет число: "
	puts "Список простых множителей -- #{calc_multipliers(gets.chomp.to_i)}"
end

def info
	puts "В программу необходимо передавать один параметр. Правило ввода:\n4_16_..._n - ввод номеров заданий, которые необходимо решить. В программе реализовано 5 методов для решения разных задач:\nex_4() - соответствует заданию 4;\nex_16() - соответствует заданию 16;\nex_28() - соответствует заданию 28;\nex_40() - соответствует заданию 40;\nex_52() - соответствует заданию 52."
end

if ARGV.length == 0
	puts "Вы не ввели ни одного параметра. Предоставляю вам справочные данные:\n"
	info
elsif ARGV.length == 1
	list = ARGV[0].split('_').map(&:to_i)
	print "Список из файла -- #{read_from_file('C:\\Users\\User\\Desktop\\file.txt'.gsub!('\\','/'))}\n"
	ARGV.clear
	list.each { |elem| eval("ex_#{elem}")}
else puts "Параметров не может быть более одного. Предоставляю вам справочные данные:\n"
	info
end
