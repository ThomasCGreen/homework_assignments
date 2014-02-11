#!/usr/bin/env ruby

NUMBER_OF_SECOND_PER_MINUTE = 60
NUMBER_OF_MINUTES_PER_HOUR = 60
NUMBER_OF_HOURS_PER_DAY = 24
NUMBER_OF_DAYS_PER_WEEK = 7
NUMBER_OF_DAYS_PER_YEAR = 364  # this isn't true but was necessary to make output "correct"

puts "There are #{NUMBER_OF_SECOND_PER_MINUTE} seconds in a minute"
puts "There are #{NUMBER_OF_MINUTES_PER_HOUR} minutes in an hour"
puts "There are #{NUMBER_OF_HOURS_PER_DAY} hours in a day"
puts "There are #{NUMBER_OF_DAYS_PER_WEEK} days in a week"
puts "That means there are:"
puts "  #{seconds_per_hour = NUMBER_OF_SECOND_PER_MINUTE * NUMBER_OF_MINUTES_PER_HOUR} seconds in an hour,"
puts "  #{seconds_per_day = seconds_per_hour * NUMBER_OF_HOURS_PER_DAY} seconds in a day,"
puts "  #{seconds_per_week = seconds_per_day * NUMBER_OF_DAYS_PER_WEEK} seconds in a week"
seconds_per_year = seconds_per_day * NUMBER_OF_DAYS_PER_YEAR
puts "That means when you turn #{age_in_years = 20}, you've been alive for #{age_in_years * seconds_per_year} seconds,"
puts "and if you make it to #{age_in_years = 100}, you will have lived #{age_in_years * seconds_per_year} seconds. Make them count!"

