require_relative "lib/game"

puts "Welcome to a game of Mastermind, it is a codebreaking game 
where the computer will attempt to guess a code consisting a pattern of four colors\n 
The available colors are: 'R', 'G', 'Y', 'B', 'P', 'O', you can select any of 
the colors and the colors can be repeated any number of times\n
Please think of a pattern\nWhen ready type: 's'"

answer = gets.chomp.downcase
if answer == "s"
  Game.new.start
else
  puts "Didn't understand your input please try again"
end
