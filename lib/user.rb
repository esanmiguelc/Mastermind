class User
  def initialize(output)
    @output = output
  end
  def give_feedback
    @output.puts "How many were correct?"
    correct = @output.gets.to_i
    @output.puts "How many were close?"
    close = @output.gets.to_i 
    [correct, close]
  end
end