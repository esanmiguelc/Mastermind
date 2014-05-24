class User
  def initialize(output)
    @output = output
  end
  def give_feedback
    correct = 0
    close = 0 
    @output.puts "How many were correct?"
    correct = @output.gets.to_i
    if correct < 0 || correct > 4
      @output.puts "Incorrect input try again. How many were correct?"
      correct = @output.gets.to_i      
    end
    unless correct == 4
      @output.puts "How many were close?"
      close = @output.gets.to_i 
      if close < 0 || close > 4
        @output.puts "Incorrect input try again. How many were correct?"
        close = @output.gets.to_i 
      end
    end
    [correct, close]
  end
end