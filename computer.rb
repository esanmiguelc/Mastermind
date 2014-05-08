class Computer
	COLORS = ["R","G","B","Y","P","O"]
	# def guess
	# 	COLORS.shuffle.take(4)
	# end
	def current_guess previous_guess = nil
		["R","R","G","G"]
	end

	def eliminate_codes seed, current_guess, feedback
		result = []
		
		0.upto(seed.length - 1).each do |n|  
			current_in_index = seed[n]
			if guess(current_guess, current_in_index) == feedback
				result << current_in_index	
			end
		end
		result
	end

	def generate_patterns
		COLORS.repeated_permutation(4).to_a.sort!
	end

	def guess codemaker, codebreaker
		correct = []
		close = []
		codemaker.each_index do |e| 
			if codemaker[e] == codebreaker[e]
				correct << codemaker[e]
			elsif codemaker[e] != codebreaker[e] && codebreaker.include?(codemaker[e])
				close << codebreaker[e]
			end
		end
		[correct.length, close.length]
	end
end