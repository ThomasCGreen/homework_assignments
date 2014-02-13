#!/usr/bin/env ruby

code = [13, 21, 21, 10, 0, 16, 21, 8, 0, 9, 21, 10, 11, 24]

code.each {|i|
  if 0==i
    print " "
  else
    # subtract seven to get a to the "0" position
    # use remanider function to get all letters to between 0 and 25
    # add 97 to get "a" to the correct value for ascii "a"
    # for .chr method to work
    print ((i-7 % 26)+97).chr
  end
}
