# У вас есть файл, со следующей структурой и содержащий не менее 10 строк: Имя, фамилия  и возраст
# *Прим.*
# *Иван Иванов 20*
# *Петр Петров 21*
# Необходимо прочитать файл, затем запросив у пользователя ввод возраста, найти в результатах чтения файла, 
# студента чей возраст равен введенному числу и записать этого студента(тов) в другой файл с названием results.txt. 
# После этого перезапросить ввод.
# Программа завершается выводом на экран содержимого файла results.txt построчно, 
# если все студенты из первого файла были записаны во второй или если пользователь ввел с клавиатуры -1

def all_students
  f_students = File.new("data/students.txt", "r:UTF-8")
  lines = f_students.read
  puts "Данные из файла students.txt\n#{lines}"
  f_students.close
end

def add_arr
  f_students = File.open("data/students.txt", 'r') do |file|
  file.each_line { |x| @students.push(x) }
  end
  f_students.close
end

def result
  f_result = File.new("data/results.txt", "r+:UTF-8")
    puts "Данные из файла results.txt"
  if !(File.size("data/results.txt") == 0)
    puts f_result.read
  else 
    puts "Данных в файле нет!"
  end 
  f_result.close
end

def list_students
  @students = []
  results = []
  age = nil

  add_arr

  loop do
    file_path = "data/results.txt"
    f_results = File.new(file_path, "a+:UTF-8")
    r_lines = f_results.read 
    puts "Введите возраст студента для записи в файл results.txt (для выхода введите -1)"
    age = gets
    results = @students.select{|item| item.include?(age)}
    f_results.puts(results)
    results = @students.reject!{|item| item.include?(age)}
    f_results.close
    break if age.to_i == -1 || @students.empty?
  end
  result
end

all_students
list_students