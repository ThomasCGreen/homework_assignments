#!/usr/bin/env ruby

def fizzbuzz(number)  # number to convert to fizzbuzz text
  fizz_buzz = (0 == number % 3) ? "Fizz" : ""   # "fizz" if divisible by 3
  fizz_buzz += "Buzz" if (0 == number % 5)      # append "buzz" if divisible by 5
  fizz_buzz = number.to_s if fizz_buzz.empty?  # otherwise just the number (as a string)
  return fizz_buzz
end

numbers = (1..100).to_a
fizz_numbers = Array.new(numbers.length) {|index| fizzbuzz(numbers[index])}
puts fizz_numbers