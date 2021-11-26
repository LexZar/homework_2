# Написать метод foobar,который принимает пару чисел,если хотябы одно равно 20 - возвращает его,
# в противном случае выводит сумму этих чисел.

puts "введите первое число"
num1 = gets.to_i
puts "введите второе число"
num2 = gets.to_i

def foobar(num1,num2)
if num1 == 20 || num2 == 20
   result = 20 
   puts result
else
   result = num1 + num2 
   puts result   
end
end

foobar(num1,num2)