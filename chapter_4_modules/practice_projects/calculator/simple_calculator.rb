# frozen_string_literal: true

require_relative "calculator"

def check_if_num(num1, num2)
  num1.is_a?(Numeric) && num2.is_a?(Numeric)
end


loop do
  puts "Enter required calculation using numbers and /*+- operators."
  calculation = gets.chomp

  a, b, c = calculation.split(" ")
  begin
    num1 = Integer(a)
    num2 = Integer(c)
  rescue ArgumentError
    puts "Enter Valid Numbers!"
    next
  end

  unless ["+", "-", "*", "/"].include?(b)
    puts "Enter a valid operator!"
    next
  end

  new_calc = Calculator.new(num1, num2, b)
  new_calc.do_calc


  puts "Would you like to perform another calculation? Y or N?"
  answer = gets.chomp.downcase
  case answer
  when "n"
    break
  when "y"
    next
  end
end

puts "Cheerioooooooo!"

