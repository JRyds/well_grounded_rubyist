# frozen_string_literal: true
require "date"
require_relative "task"


class TodoList
  def initialize
    print "Enter the title for your list: "
    @title = gets.chomp

    print "Enter a short description of your list: "
    @list_descrip = gets.chomp

    print "Enter the due date for this list (YYYY-MM-DD): "
    input_date = gets.chomp
    begin
      @list_due_date = Date.parse(input_date)
    rescue ArgumentError
      puts "Invalid date format. Please enter the date in YYYY-MM-DD format."
    end

    @tasks = []
  end

  def display_contents
    instance_variables.each do |attribute|
      puts "#{attribute}: #{instance_variable_get(attribute)}"
    end
  end

end
