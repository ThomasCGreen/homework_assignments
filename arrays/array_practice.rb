#!/usr/bin/env ruby

my_array = (1..10).to_a

my_array.each {|i| print i.to_s + "..."}
puts
puts "T-" + my_array.reverse.join(", ") + "...  BLASTOFF!"
puts "The last element is #{my_array.last}"
puts "The first element is #{my_array.first}"
puts "The third element is #{my_array.at(2)}"
puts "The element with an index of 3 is #{my_array.at(3)}"
puts "The second from last element is #{my_array.at(-2)}"
puts "The first four elements are '#{my_array.first(4).join", "}'"
my_array.delete(5)
my_array.delete(6)
my_array.delete(7)
puts "If we delete 5, 6 and 7 from the array, we're left with [#{my_array.join(",")}]"
puts "If we add 5 at the beginning of the array, we're left with [#{my_array.unshift(5).join","}]"
puts "If we add 6 at the end of the array, we're left with [#{my_array.push(6).join(",")}]"
puts "Only the elements [#{my_array.select {|i| i > 8}.join(", ")}] are > 8."
puts "If we remove all the elements, then the length of the array is #{my_array.clear.length}"

