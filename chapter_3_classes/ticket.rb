# frozen_string_literal: true

class Ticket
  def initialize(venue)
    @venue = venue
  end

  def date=(date)
    year, month, day = date.split('-')
    if year.to_i < 99
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price=(amount)
    @price = amount.to_f
  end

  def price
    format('%.2f', @price)
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
    puts "The ticket for #{@venue} has been discounted #{percent} to #{'%.2f' % @price}."
  end

end
