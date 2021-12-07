class Pokemon
  def input_pokemons
    puts "Введите количество покемонов.(Для выхода нажмите -1)"
    @input = gets.to_i
  end
    
  def name_pokemon
    puts "Введите имя покемона.(Для выхода нажмите q)" 
    @name = gets.chomp.to_s
  end
  
  def color_pokemon
    puts "Введите цвет покемона.(Для выхода нажмите q)" 
    @color = gets.chomp.to_s
  end
  
  def init 
    input_pokemons
    @pokemons = []
    count = 1 
        
    while count <= @input do
      name_pokemon
        if @name != "q"
          val_name = @name
          color_pokemon
          if @color != "q"
            val_color = @color
            pokemon = {"name" => val_name ,"color" => val_color}
            @pokemons.push(pokemon)
            count +=1  
          else break
          end
        else break
        end  
      end
        return @pokemons
    end

  def result
      puts @pokemons
  end
end
