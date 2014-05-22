describe "#give_feedback" do
  let(:output) { double('output').as_null_object } 
  let(:user) { User.new(output) } 
  it "should prompt for correct hits" do
    output.should_receive(:puts).with("How many were correct?")
    output.should_receive(:gets).and_return(3)

    user.give_feedback
  end

  it "should prompt for close hits" do
    output.should_receive(:puts).with("How many were correct?")
    output.should_receive(:gets).and_return(3)
    output.should_receive(:puts).with("How many were close?")
    output.should_receive(:gets).and_return(1)

    user.give_feedback
  end
end