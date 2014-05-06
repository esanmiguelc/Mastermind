require 'spec_helper'
describe "a sample game" do
	let(:computer) { Computer.new } 
		it "should generate a random guess" do
			computer.guess.should have(4).items
		end
end

