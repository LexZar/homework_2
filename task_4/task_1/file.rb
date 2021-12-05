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

def find (id)
  document = "text.txt"  
  File.foreach(document).with_index do |text, index|
  @line_id = index   
  end
  @line_id
end

def where

end

def update (id,text)
  file = File.open ("text.txt", 'w')
  File.foreach("text.txt").with_index do |text, in|
  file.puts(text)  
  end
  file.close
end

def delete

end

# puts index
puts find (1)
# puts update (1,"text")