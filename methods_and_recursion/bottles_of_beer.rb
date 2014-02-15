#!/usr/bin/env ruby

def bottles(number_of_bottles)
  if (0 == number_of_bottles)
    return ("no more bottles ")
  elsif (1 == number_of_bottles)
    return ("1 bottle ")
  else
    return (number_of_bottles.to_s + " bottles ")
  end
end


def bottles_of_beer(number_of_bottles)
  next_bottles = number_of_bottles -1
  if (0 == number_of_bottles)
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  else
    print bottles(number_of_bottles)
    print "of beer on the wall, "
    print bottles(number_of_bottles)
    puts "of beer."
    print "Take one down and pass it around, "
    print bottles(number_of_bottles-1)
    puts "of beer on the wall."
    puts
    bottles_of_beer(number_of_bottles-1)
  end
end

bottles_of_beer(99)