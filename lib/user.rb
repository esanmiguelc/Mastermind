class User
  def initialize(output)
    @output = output
  end
  def give_feedback
    @output.puts "How many were correct?"
    correct = @output.gets.to_i
    @output.puts "How many were close?"
    close = @output.gets.to_i
  #   begin
  #     @stdoutput.puts "How many were correct?"
  #     correct = @stdoutput.gets.chomp.to_i
  #   end while (correct < 0 || correct > 4)
    
  #   if correct == 4
  #     close = 0
  #   else
  #     begin
  #       @stdoutput.puts "How many were close?"
  #       close = @stdoutput.gets.chomp.to_i
  #     end while (correct < 0 || correct > 4)
  #   end 
  #   [correct, close]
  end
end