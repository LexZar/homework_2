require 'rspec'
require './foobar.rb'

RSpec.describe "#Foobar methods" do
  it "#if the first number is 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20,10)
    expect(foobar).to eq(10)   
  end
  
  it "#if the second number is 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(10,20)
    expect(foobar).to eq(10)   
  end

  it "#no number is equal to 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(3,5)
    expect(foobar).to eq(8)   
  end
end