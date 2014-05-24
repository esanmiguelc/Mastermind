require "spec_helper"
describe "Start the game" do
  let(:output) { double('output').as_null_object } 
  let(:game) { Game.new(output, Computer.new, user) } 
  let(:user) { User.new(output) }
  it "should start the game" do
    game.should respond_to(:start)
  end

  it "should successfully complete a game" do
    output.should_receive(:puts).with("starting game..")
    
  end
end