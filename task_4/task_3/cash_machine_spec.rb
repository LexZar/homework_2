require 'rspec'
require './CashMachine.rb'

RSpec.describe "Class CachMachine methods" do
    it "#deposit methods" do
    atm = CashMachine.new
    allow_any_instance_of(Kernel).to receive(:gets).and_return("d")
    expect(atm.deposit).to eq({100,200,500,1000})
    end
end