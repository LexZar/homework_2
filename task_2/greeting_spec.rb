require 'rspec'

def greeting
  name = gets.to_s
  last_name = gets.to_s
  age = gets.to_i
  if age < 18
    result = "Привет, #{name} #{last_name}.Тебе меньше 18 лет,но учится программировать никогда не рано."
    result
  else 
    result = "Привет, #{name} #{last_name}.Самое время занятся делом!"
    result
  end
end

RSpec.describe "Greeting methods" do
  it "#greeting under the age of 18" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("lex","Luter",17)
    expect(greeting).to eq("Привет, lex Luter.Тебе меньше 18 лет,но учится программировать никогда не рано.")  
  end

  it "#greetings over 18 years old" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("lex","Luter",19)
    expect(greeting).to eq("Привет, lex Luter.Самое время занятся делом!")  
  end
end