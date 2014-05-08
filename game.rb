require_relative 'computer'
require_relative 'user'


class Game
	def start
		computer = Computer.new
		user = User.new
		feedback = []
		s = computer.generate_patterns
		puts "#{computer.current_guess}"
		
		while feedback[0] != 4
			feedback = user.give_feedback
			puts "#{computer.current_guess} feedback: #{feedback}"
			# reduce_codes(feedback, current_guess)
		end
		puts "#{computer.current_guess}, Yay! Game over"
	end
end

puts "Please think of a pattern\nWhen ready type: Game.new.start"