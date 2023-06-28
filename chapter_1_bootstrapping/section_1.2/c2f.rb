# frozen_string_literal: true

puts "Enter Celsius"
celsius = gets.chomp.to_i
fahrenheit = (celsius * 9 / 5) + 32
print "The result is #{fahrenheit}."
