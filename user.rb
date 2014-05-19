class User
  def give_feedback
    begin
      puts "How many were correct?"
      correct = gets.chomp.to_i
    end while (correct < 0 || correct > 4)
    
    if correct == 4
      close = 0
    else
      begin
        puts "How many were close?"
        close = gets.chomp.to_i
      end while (correct < 0 || correct > 4)
    end 
    [correct, close]
  end
end