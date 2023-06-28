# frozen_string_literal: true

ticket = Object.new

def ticket.date
  "1903-01-02"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end



print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available"
end

def ticket.print_details(*x)
  x.each { |detail| puts "This ticket is #{detail}" }
end

class Ticket
  def initialize(venue,date)
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price=(amount)
    @price = amount
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
    puts "The ticket for #{@venue} has been discounted #{percent} to
         #{@price)}."
  end

end

