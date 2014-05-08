require 'spec_helper'
describe "computer tasks" do
	let(:computer) { Computer.new }
	let(:user)	{ User.new }
	let(:s) {[["O", "B", "G", "B"], ["O", "B", "G", "Y"], ["O", "B", "G", "P"], ["O", "B", "G", "O"], 
					["O", "B", "B", "R"], ["O", "B", "B", "G"], ["O", "B", "B", "B"], ["O", "B", "B", "Y"], 
					["O", "B", "B", "P"], ["O", "B", "B", "O"], ["O", "B", "Y", "R"], ["O", "B", "Y", "G"], 
					["O", "B", "Y", "B"], ["O", "B", "Y", "Y"], ["O", "B", "Y", "P"], ["O", "B", "Y", "O"], 
					["O", "B", "P", "R"], ["O", "B", "P", "G"], ["O", "B", "P", "B"], ["O", "B", "P", "Y"], 
					["O", "B", "P", "P"], ["O", "B", "P", "O"], ["O", "B", "O", "R"], ["O", "B", "O", "G"], 
					["O", "B", "O", "B"], ["O", "B", "O", "Y"], ["O", "B", "O", "P"], ["O", "B", "O", "O"], 
					["O", "Y", "R", "R"], ["O", "Y", "R", "G"], ["O", "Y", "R", "B"], ["O", "Y", "R", "Y"], 
					["O", "Y", "R", "P"], ["O", "Y", "R", "O"], ["O", "Y", "G", "R"], ["O", "Y", "G", "G"], 
					["O", "Y", "G", "B"], ["O", "Y", "G", "Y"], ["O", "Y", "G", "P"], ["O", "Y", "G", "O"], 
					["O", "Y", "B", "R"], ["O", "Y", "B", "G"], ["O", "Y", "B", "B"], ["O", "Y", "B", "Y"], 
					["O", "Y", "B", "P"], ["O", "Y", "B", "O"], ["O", "Y", "Y", "R"], ["O", "Y", "Y", "G"], 
					["O", "Y", "Y", "B"], ["O", "Y", "Y", "Y"], ["O", "Y", "Y", "P"], ["O", "Y", "Y", "O"], 
					["O", "Y", "P", "R"], ["O", "Y", "P", "G"], ["O", "Y", "P", "B"], ["O", "Y", "P", "Y"], 
					["O", "Y", "P", "P"], ["O", "Y", "P", "O"], ["O", "Y", "O", "R"], ["O", "Y", "O", "G"], 
					["O", "Y", "O", "B"], ["O", "Y", "O", "Y"], ["O", "Y", "O", "P"], ["O", "Y", "O", "O"], 
					["O", "P", "R", "R"], ["O", "P", "R", "G"], ["O", "P", "R", "B"], ["O", "P", "R", "Y"], 
					["O", "P", "R", "P"], ["O", "P", "R", "O"], ["O", "P", "G", "R"], ["O", "P", "G", "G"], 
					["O", "P", "G", "B"], ["O", "P", "G", "Y"], ["O", "P", "G", "P"], ["O", "P", "G", "O"], 
					["O", "P", "B", "R"], ["O", "P", "B", "G"], ["O", "P", "B", "B"], ["O", "P", "B", "Y"], 
					["O", "P", "B", "P"], ["O", "P", "B", "O"], ["O", "P", "Y", "R"], ["O", "P", "Y", "G"],
					["O", "P", "Y", "B"], ["O", "P", "Y", "Y"], ["O", "P", "Y", "P"], ["O", "P", "Y", "O"],
					["O", "P", "P", "R"], ["O", "P", "P", "G"], ["O", "P", "P", "B"], ["O", "P", "P", "Y"],
					["O", "P", "P", "P"], ["O", "P", "P", "O"], ["O", "P", "O", "R"], ["O", "P", "O", "G"],
					["O", "P", "O", "B"], ["O", "P", "O", "Y"], ["O", "P", "O", "P"], ["O", "P", "O", "O"],
					["O", "O", "R", "R"], ["O", "O", "R", "G"], ["O", "O", "R", "B"], ["O", "O", "R", "Y"],
					["O", "O", "R", "P"], ["O", "O", "R", "O"], ["O", "O", "G", "R"], ["O", "O", "G", "G"], 
					["O", "O", "G", "B"], ["O", "O", "G", "Y"], ["O", "O", "G", "P"], ["O", "O", "G", "O"], 
					["O", "O", "B", "R"], ["O", "O", "B", "G"], ["O", "O", "B", "B"], ["O", "O", "B", "Y"], 
					["O", "O", "B", "P"], ["O", "O", "B", "O"], ["O", "O", "Y", "R"], ["O", "O", "Y", "G"], 
					["O", "O", "Y", "B"], ["O", "O", "Y", "Y"], ["O", "O", "Y", "P"], ["O", "O", "Y", "O"], 
					["O", "O", "P", "R"], ["O", "O", "P", "G"], ["O", "O", "P", "B"], ["O", "O", "P", "Y"], 
					["O", "O", "P", "P"], ["O", "O", "P", "O"], ["O", "O", "O", "R"], ["O", "O", "O", "G"], 
					["O", "O", "O", "B"], ["O", "O", "O", "Y"], ["O", "O", "O", "P"], ["O", "O", "O", "O"]]}

		it "should be RRGG" do
			computer.current_guess.should eql(["R", "R", "G", "G"])		   
		end 

		it "should generate all possible outcomes" do
			generate = computer.generate_patterns
			generate.should have(1296).items
		end	

		it "should generate feedback for input" do
			computer.guess(["R","G","B","Y"], ["R", "R", "G", "G"]).should eql([1,1])
			computer.guess(["B","Y","P","O"], ["R", "R", "G", "G"]).should eql([0,0])
			computer.guess(["R", "R", "G", "B"],["R", "R", "G", "G"]).should eql([3,0])
			computer.guess(["R", "R", "G", "G"],["R", "R", "G", "G"]).should eql([4,0])
		end

		it "should eliminate code that would not have given the same response" do
			code = ["O","B","B","Y"]
			feedback = [3,0]
			computer.eliminate_codes(s,code,feedback).should eql([["O", "B", "B", "R"], ["O", "B", "B", "G"],["O", "B", "B", "B"], ["O", "B", "B", "P"], ["O", "B", "B", "O"]])
		end

		# it "computer should generate a random guess" do
		# 	computer.guess.should have(4).items
		# end
end

