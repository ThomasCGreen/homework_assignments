#!/usr/bin/env ruby
# Generate a RandomNumber program
# that lets the user guess a random
# number
#
#   rand(10) + 1  will return a
# random number between 1 and 10
#
# Usage:
#   ./warmup_02.rb
#   I've picked a random number between 1 and 10.
#
#   What is your guess? 5
#   Too High!
#   What is your guess? 3
#   Too Low!
#   What is your guess? 4
#   You got it in 3 guesses. Good job!

def guess(max_number)
  number_of_guesses = 0
  correct_number = rand(max_number) + 1
  guess = 0
  puts "I've picked a random number between 1 and #{max_number}.\n\n"
  while (guess != correct_number)
    print "What is your guess? "
    guess = gets.chomp.to_i
    number_of_guesses += 1
    if (guess > correct_number)
      puts "Too High!"
    elsif (guess < correct_number)
      puts "Too Low!"
    else
      puts "You got it in #{number_of_guesses} guesses. Good job!"
    end
  end
end

guess(10)