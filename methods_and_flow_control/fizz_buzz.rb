#!/usr/bin/env ruby

def fizzbuzz i  # i is number to convert to fizzbuzz text
  fizz_buzz = (0 == i % 3) ? "Fizz" : ""   # "fizz" if divisible by 3
  fizz_buzz += "Buzz" if (0 == i % 5)      # append "buzz" if diviible by 5
  fizz_buzz = i.to_s if fizz_buzz.empty?  # otherwise just the number (as a string)
  return fizz_buzz
end

(1..100).each {|i| puts fizzbuzz(i)}