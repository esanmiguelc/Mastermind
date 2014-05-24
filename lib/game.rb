require_relative 'computer'
require_relative 'user'


class Game
  def initialize(output, computer, user)
    @output = output
    @computer = computer
    @user = user
  end
  def start
    @output.puts "Starting new game..."
    guesses = []
    feedbacks = []
    guess_num = 0
    s = @computer.generate_patterns
    begin
      guess = @computer.current_guess(s)
      guesses << guess
      @output.puts "\n#{guess}"
      feedback = @user.give_feedback
      feedbacks << feedback
      build_board(guesses, feedbacks)
      s = @computer.eliminate_codes(s, guess, feedback)
      guess_num += 1
    end while feedback[0] != 4
    @output.puts "Yay! Game over in #{guess_num} tries"
  end

  def build_board(guess, feedback)
    guess.each_index do |e|
      @output.puts "||  #{guess[e]}  || #{feedback[e]}"
    end
  end
end


