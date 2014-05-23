require "spec_helper"

describe "Start the game" do
  let(:output) { double('output').as_null_object } 
  let(:game) { Game.new(Kernel) } 
  it "should start the game" do
    game.should respond_to(:start)
  end

  it "should successfully complete a game" do
  end
end