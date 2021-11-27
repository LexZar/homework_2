require 'rspec'

def foobar(num1,num2)
  if num1 == 20 
    result = num2 
    result
  elsif num2 == 20 
    result = num1
    result         
  else
    result = num1 + num2 
    result
  end 
end

RSpec.describe "Foobar methods" do
  it "if the first number is 20" do
    expect(foobar(20,10)).to eq(10)  
  end
  it "if the second number is 20" do
    expect(foobar(10,20)).to eq(10)  
  end
  it "no number is equal to 20" do
    expect(foobar(3,5)).to eq(8) 
  end
end