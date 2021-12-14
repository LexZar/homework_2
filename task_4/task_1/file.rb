# #Задача 1
# Написать набор методов для работы с файлом:
# **index** - выводит все строки
# **find(id)** - находит конкретную строку в файле и выводит ее
# **where(pattern)** - находит все строки, где есть указанный паттерн
# **update(id, text)** - обновляет конкретную строку файла
# **delete(id)** - удаляет строку
# Id = line number

def index
  file = File.read("text.txt")
end

def find(id)
  file = File.readlines("text.txt")
  file[id] 
end

def where(text)
  File.foreach("text.txt").with_index do |lines, index|
    @lines_id = index if lines.include?(text)  
  end
  puts @lines_id 
end

def update (id,text)
  file = File.open("buffer.txt", 'w')
  File.foreach("text.txt").with_index do |lines, index|
    file.puts(id == index ? text : lines)
  end

  file.close
  File.write("text.txt", File.read("buffer.txt"))  
  File.delete("buffer.txt") if File.exist?("buffer.txt")  
end

def delete(id)
  old_file = File.readlines("text.txt")
  old_file.delete_at(id)
  File.write("text.txt",old_file.join)
end

# puts index
# puts find(3)
# puts where("But")
# puts update(0, "text")
# puts delete(13)