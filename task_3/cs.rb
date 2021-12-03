# Написать скрипт, который будет принимать слово, если слово заканчивается на “CS” - выводит на 
# экран цифру 2 в степени (длины введенного слова), если не заканчивается - выводит слово задом наперед

def slovo
  puts "введите слово"
  word = gets.chomp.to_s.downcase 
  
  if word[-2..-1].include? "cs"
    result = 2**word.length 
  else
    result = word.reverse     
  end
    return @result = result 
end

slovo
puts @result