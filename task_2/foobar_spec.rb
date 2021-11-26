require 'rspec'

def foobar(num1,num2)
    if num1 == 20 || num2 == 20
       result = 20 
       result
    else
       result = num1 + num2 
       result
    end
    end

RSpec.describe "Foobar methods" do
    it "if at least one number is 20" do
        expect(foobar(20,10)).to eq(20)  
    end

    it "no number is equal to 20" do
        expect(foobar(3,5)).to eq(8) 
    end
end