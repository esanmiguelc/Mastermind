class User
  def initialize(output)
    @output = output
  end
  def give_feedback
    close = 0 
    @output.puts "How many were correct?"
    correct = @output.gets.to_i
    unless correct == 4
      @output.puts "How many were close?"
      close = @output.gets.to_i 
    end
    [correct, close]
  end
end