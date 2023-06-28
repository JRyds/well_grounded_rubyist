# frozen_string_literal: true

class Ticket
  attr_reader :venue, :date, :price
  attr_writer :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
    puts "The ticket for #{@venue} has been discounted #{percent} to #{'%.2f' % @price}."
  end

end