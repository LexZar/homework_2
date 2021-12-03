require 'rspec'
require './cs.rb'

RSpec.describe "Slovo methods" do
    it "#word contains 'cs'" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("physics")
      expect(slovo).to eq(128)  
    end
  
    it "#the word does not contain 'cs'" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("word")
      expect(slovo).to eq("drow")  
    end
  end