# frozen_string_literal: true

# This module has the basic arithmetic methods for the calculator app
class Calculator
  attr_accessor :num1, :num2, :opr

  def initialize(num1, num2, opr)
    @num1 = num1.to_i
    @num2 = num2.to_i
    @opr = opr

  end
  def add
    @num1 + @num2
  end

  def subt
    @num1 - @num2
  end

  def multi
    @num1 * @num2
  end

  def div
    @num1 / @num2
  end

  def do_calc
    result = case @opr
             when "+"
               add
             when "-"
               subt
             when "*"
               multi
             when "/"
               div
             end
    puts result
  end

end

