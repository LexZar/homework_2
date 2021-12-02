require 'rspec'
require './greeting.rb'

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