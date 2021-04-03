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
