class CashMachine
    def initialize
      puts "Введите:\n D - для того что бы положить деньги\n W - для того что бы снять деньги\n B - для просмотра баланса\n Q - для выхода"
    end
    
    def max_deposit
      @max_capacity = 8000000.0 
      actuall_capacity_atm= File.new("actuall_capacity_atm.txt", "r:UTF-8")
      @actuall = actuall_capacity_atm.read.to_f
      @max_deposit = @max_capacity - @actuall
    end

    def deposit
      max_deposit
      puts "Введите сумму которую вы хотите положить на счет.\n Банкомат принимает только купюры номиналом 50,100,200,500,1000,2000,5000"
        deposit = gets.to_f
          if deposit % 50 == 0 || deposit % 100 == 0 || deposit % 200 == 0 || deposit % 500 == 0 || deposit % 1000 == 0 || deposit % 2000 == 0 || deposit % 5000 == 0
            if  deposit.to_f <= @max_deposit
              if File.exist?("balance.txt")
                f_balance = File.new("balance.txt", "r:UTF-8")
                balance = f_balance.read.to_f
                f_balance.close
              else
                balance = 100.0
              end   
                new_balance = balance + deposit
                f_balance = File.new("balance.txt", "w:UTF-8")
                f_balance.puts(new_balance)
                f_balance.close
                f_actuall = File.new("actuall_capacity_atm.txt", "w:UTF-8")
                f_actuall.puts(@actuall + deposit)
                f_actuall.close
            else 
            puts "Банкомат  не может принять такую большую сумму. Вы можете внести не более #{@max_deposit}"
            end
          else
          puts "Банкомат может принять сумму только купюрами номиналом 50,100,200,500,1000,2000,5000."
          end 
    end
  
    def withdraw
      max_deposit
      if File.exist?("balance.txt")
        f_balance = File.new("balance.txt", "r:UTF-8")
        balance = f_balance.read.to_f
        puts "Ваш баланс #{balance}.Сколько Вы хотите снять? Банкомат выдает только купюры номиналом 50,100,200,500,1000,2000,5000"
        withdraw = gets.to_f
        f_balance.close
      else
        balance = 100.0
        puts "Ваш баланс #{balance}.Сколько Вы хотите снять? Банкомат выдает только купюры номиналом 50,100,200,500,1000,2000,5000"
        withdraw = gets.to_f
        f_balance.close
      end
      if withdraw % 50 == 0 || withdraw % 100 == 0 || withdraw % 200 == 0 || withdraw % 500 == 0 || withdraw % 1000 == 0 || withdraw % 2000 == 0 || withdraw % 5000 == 0 
        if withdraw <= @actuall 
          if withdraw > 0 && withdraw <= balance
            new_balance = balance - withdraw
            f_balance = File.new("balance.txt", "w:UTF-8")
            f_balance.puts(new_balance)
            f_balance.close
          else
            puts "Недостаточно средств на вашем счету"
          end
        else
          puts "В банкомате нет столько денежных средств. Для снятия доступно #{@actuall} "
        end
      else
        puts " Банкомат выдает только купюры номиналом 50,100,200,500,1000,2000,5000.Введите другую сумму."
      end         
    end
  
    def balance
      if File.exist?("balance.txt")
        f_balance = File.new("balance.txt", "r:UTF-8")
        lines = f_balance.read.chomp
        f_balance.close
        puts "Ваш баланс: #{lines}"
      else
        puts "Ваш баланс: 100"
      end
    end

    def init
      loop do
        input = gets.downcase.chomp
    
        if input === "d"
          deposit
        elsif  input === "w"
          withdraw   
        elsif input ==="b" 
          balance
        elsif input === "q" 
          break
        else
          puts "Только D W B Q"  
        end
          initialize
      end
    end
  end