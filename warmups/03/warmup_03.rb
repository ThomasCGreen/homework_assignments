class NumberGuesser

  def attempt_guess(number, guess)
    if (guess > number)
      puts "Too high!"
    elsif (guess < number)
      puts "Too low!"
    else
      puts "You got it in #{@number_of_guesses} tries!"
      return true
    end
    return false
  end

  def play(size_of_number=10)
    @number_of_guesses = 0
    random_number = rand(size_of_number) + 1
    puts "I have picked a number between 1 and #{size_of_number}."
    while true
      print "What is your guess? "
      guess = gets.chomp.to_i
      @number_of_guesses += 1
      break if attempt_guess(random_number, guess)
    end
  end

end