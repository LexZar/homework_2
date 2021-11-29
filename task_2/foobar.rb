# Написать метод foobar, который принимает пару чисел, если хотя бы одно равно 20 - возвращает второе число, 
# в противном случае выводит сумму этих чисел.

def foobar
  puts "введите первое число"
  num1 = gets.to_i
  puts "введите второе число"
  num2 = gets.to_i
  
  if num1 == 20 
    result = num2 
  elsif num2 == 20
    result = num1  
  else
    result = num1 + num2  
  end
    puts result
end

foobar