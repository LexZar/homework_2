require 'rspec'
require './Pokemons.rb'

RSpec.describe "Class Pokemon methods" do
    it "#pokemon name and color" do
      pokemon = Pokemon.new
      allow_any_instance_of(Kernel).to receive(:gets).and_return(1,"pikachu","yellow")
      expect(pokemon.init).to eq([{"name"=>"pikachu", "color"=>"yellow"}])   
    end
    
    it "#2 pokemons names and colors" do
      pokemon = Pokemon.new
      allow_any_instance_of(Kernel).to receive(:gets).and_return( 2,"pikachu","yellow","bulbasaur","green")
      expect(pokemon.init).to eq([{"name"=>"pikachu", "color"=>"yellow"},{"name"=> "bulbasaur","color"=> "green"}])  
    end
  end