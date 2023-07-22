# frozen_string_literal: true

require 'date'

class Calendar
  attr_accessor :current_date

  def initialize
    @current_date = Date.today
  end

  def display_calendar
    puts " #{current_date.strftime("%B %Y")}"
    puts " Su Mo Tu We Th Fr Sa"

    first_day_of_month = current_date.beginning_of_month
    last_day_of_month = current_date.end_of_month

    current_date.beginning_of_month.wday.times { print "    " }

    (first_day_of_month..last_day_of_month).each do |date|
      if date == Date.today
        print date.day.to_s.rjust(2).colorize(:red) + " "
      else
        print date.day.to_s.rjust(2) + " "
      end

      print "\n" if date.wday == 6
    end

    puts "\n"
  end

  def next_month
    @current_date = current_date.next_month
  end

  def prev_month
    @current_date = current_date.prev_month
  end
end

# Usage
calendar = Calendar.new
calendar.display_calendar

# Move to next month
calendar.next_month
calendar.display_calendar

# Move to previous month
calendar.prev_month
calendar.display_calendar
