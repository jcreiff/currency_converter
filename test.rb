require './currency.rb'



us_dollar = Currency.new(50, "USD")
euro = Currency.new(75, "EUR")

joe_money = Currency.new(50, "USD")
jen_money = Currency.new(75, "USD")
kev_money = Currency.new(50, "EUR")
syd_money = Currency.new(75, "EUR")

puts joe_money.get_amount
puts jen_money.get_amount
puts kev_money.get_amount
puts syd_money.get_amount

puts joe_money == jen_money
puts kev_money == syd_money


# p us_dollar
#
# puts us_dollar.get_amount
# puts us_dollar.get_code
#
# puts us_dollar.add_amount(60, "EUR")
#
# puts us_dollar == us_dollar
