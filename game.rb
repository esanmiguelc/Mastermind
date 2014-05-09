require_relative 'computer'
require_relative 'user'


class Game
	def start
		computer = Computer.new
		user = User.new
		feedback = []
		guess = []
		s = computer.generate_patterns
		while feedback[0] != 4
			guess = computer.current_guess(s)
			puts "#{guess}"
			feedback = user.give_feedback
			puts "feedback: #{feedback}"
			s = computer.eliminate_codes(s, guess, feedback)
			puts "#{s}"
		end 
		puts "#{guess}, Yay! Game over"
	end
end

puts "Please think of a pattern\nWhen ready type: Game.new.start"

["R","B", "Y", "O"]