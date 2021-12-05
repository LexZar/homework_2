require 'rspec'
require './students.rb'

RSpec.describe "List_students methods" do
    it "#list students" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(19)
      expect(list_students).to eq(["Илья Ильин","Артур Артуров"])   
    end
  end