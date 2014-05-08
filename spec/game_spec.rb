require "spec_helper"

describe "Start the game" do
	it "should start the game" do
		game = Game.new
		game.should respond_to(:start)
	end
end