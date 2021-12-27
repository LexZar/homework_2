require 'rspec'
require './CashMachine.rb'

RSpec.describe "Class CachMachine methods" do
    it "#max_deposit methods" do
      atm = CashMachine.new
      expect(atm.max_deposit).to eq(atm.max_capacity - atm.actuall_capacity_atm)
    end

    it "#balance" do
      atm = CashMachine.new
      allow_any_instance_of(Kernel).to receive(:gets).and_return("b")
      expect(atm.balance).to eq(atm.balance)  
    end

    it "#deposit" do
      atm = CashMachine.new
      allow_any_instance_of(Kernel).to receive(:gets).and_return(150)
      expect(atm.deposit).to eq(atm.balance)  
    end

    it "#withdraw" do
      atm = CashMachine.new
      allow_any_instance_of(Kernel).to receive(:gets).and_return(500)
      expect(atm.withdraw).to eq(atm.balance)  
    end
end