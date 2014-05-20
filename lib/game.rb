require_relative 'computer'
require_relative 'user'


class Game
  def start
    puts "Starting new game..."
    computer = Computer.new
    user = User.new
    guess_num = 1
    s = computer.generate_patterns
    begin
      guess = computer.current_guess(s)
      puts "#{guess}"
      feedback = user.give_feedback
      puts "feedback: #{feedback}, number of guesses: #{guess_num}"
      s = computer.eliminate_codes(s, guess, feedback)
      guess_num += 1
    end while feedback[0] != 4
    puts "#{guess}, Yay! Game over" 
  end
end

