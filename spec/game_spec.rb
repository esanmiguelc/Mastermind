require "spec_helper"
let(:game) { Game.new } 
describe "Start the game" do
  it "should start the game" do
    game.should respond_to(:start)
  end

  it "should receive game over message" do

  end
end