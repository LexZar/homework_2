require 'rspec'
require './CashMachine.rb'

RSpec.describe "Class CachMachine methods" do
    it "#max_deposit methods" do
    atm = CashMachine.new

    # max_capacity = 8000000.0 
    # actuall = 6000000.0
   
    expect(atm.max_deposit).to eq(2000000)
    end
end