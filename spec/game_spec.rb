require "spec_helper"

describe "Start the game" do
  let(:game) { Game.new } 
  it "should start the game" do
    game.should respond_to(:start)
  end
end