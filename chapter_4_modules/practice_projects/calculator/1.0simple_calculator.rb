# frozen_string_literal: true

require_relative "calculator"

new_calc = Calculator.new

puts "Enter required calculation using numbers and /*+- operators."
calculation = gets.chomp

a, b, c = calculation.split(" ")



begin
  num1 = a.to_i
  num2 = c.to_i
rescue
end

result = case b
         when "+"
           new_calc.add(num1, num2)
         when "-"
           new_calc.subt(num1, num2)
         when "*"
           new_calc.multi(num1, num2)
         when "/"
           new_calc.div(num1, num2)
         else
           puts "Invalid operator"
         end
puts result


# loop do
#   puts "Enter a calculation:"
#   calculation = gets.chomp
#
#   # Perform the calculation (Example: Addition)
#   result = eval(calculation)
#
#   puts "Result: #{result}"
#
#   puts "Do you want to continue? (Y/N)"
#   choice = gets.chomp.downcase
#
#   break if choice != "y"
# end