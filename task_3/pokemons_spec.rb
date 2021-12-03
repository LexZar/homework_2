require 'rspec'
require './pokemons.rb'

RSpec.describe "Pokemons methods" do
    it "#pokemon name and color" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return( 1,"pikachu","yellow")
      expect(pokemon).to eq(["name"=>"pikachu", "color"=>"yellow"])   
    end
    
    it "#2 pokemons names and colors" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return( 2,"pikachu","yellow","bulbasaur","green")
      expect(pokemon).to eq([{"name"=>"pikachu", "color"=>"yellow"},{"name"=> "bulbasaur","color"=> "green"}])  
    end
  end