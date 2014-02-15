#!/usr/bin/env ruby

def print_mad_lib (mad_lib_text, previous_parts_of_speech)
  next_part_of_speech = /\$\$([^\$]*)\$\$/.match(mad_lib_text)
  if next_part_of_speech == nil
    puts mad_lib_text
  else
    pattern_found = next_part_of_speech[0]  # this is the pattern with enclosing $$patern$$
    part_of_speech = next_part_of_speech[1]
    print "Give me "
    if previous_parts_of_speech.include?(part_of_speech)
      print "another "
    else
      print "a "
      previous_parts_of_speech.push(part_of_speech)
    end
    puts "#{part_of_speech}:"
    new_word = gets.chomp
    new_text = mad_lib_text.sub(pattern_found, new_word)
    print_mad_lib(new_text, previous_parts_of_speech)
  end
end

mad_lib = File.read("../methods_and_recursion/mad_lib.txt")
print_mad_lib(mad_lib, [])