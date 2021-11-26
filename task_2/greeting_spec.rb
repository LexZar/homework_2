require 'rspec'

def greeting(name,last_name,age)
    if age < 18
      result = "Привет, #{name} #{last_name}.Тебе меньше 18 лет,но учится программировать никогда не рано."
      result
    else 
      result = "Привет, #{name} #{last_name}.Самое время занятся делом!"
      result
    end
    end


RSpec.describe "Greeting methods" do
    it "greeting under the age of 18" do
        expect(greeting("lex","Luter",17)).to eq("Привет, lex Luter.Тебе меньше 18 лет,но учится программировать никогда не рано.")  
    end

    it "greetings over 18 years old" do
        expect(greeting("lex","Luter", 18)).to eq("Привет, lex Luter.Самое время занятся делом!")  
    end
end