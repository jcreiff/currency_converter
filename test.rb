require './currency.rb'



us_dollar = Currency.new(50, "USD")
euro = Currency.new(75, "EUR")

joe_money = Currency.new(50, "USD")
jen_money = Currency.new(50, "USD")
kev_money = Currency.new(50, "EUR")
syd_money = Currency.new(50, "EUR")

puts "Joe: #{joe_money.get_amount}"
puts "Jen: #{jen_money.get_amount}"
puts "Kev: #{kev_money.get_amount}"
puts "Syd: #{syd_money.get_amount}"

puts "Joe = Jen: #{joe_money == jen_money}"
puts "Kev = Syd: #{kev_money == syd_money}"

joe_money.add_amount(75, "USD")
jen_money.add_amount(50, "USD")
kev_money.add_amount(50, "EUR")
syd_money.add_amount(50, "USD")

puts "Joe + 75 USD = #{joe_money.get_amount}"
puts "Jen + 50 USD = #{jen_money.get_amount}"
puts "Kev + 50 EUR = #{kev_money.get_amount}"
puts "Syd still = #{syd_money.get_amount}"

puts "Joe = Jen: #{joe_money == jen_money}"
puts "Kev = Syd: #{kev_money == syd_money}"
puts "Jen = Kev: #{jen_money == kev_money}"
puts "Jen = Syd: #{jen_money == syd_money}"

joe_money.subtract_amount(75, "USD")
jen_money.subtract_amount(50, "USD")
kev_money.subtract_amount(50, "EUR")
syd_money.subtract_amount(50, "USD")

puts "Joe - 75 USD = #{joe_money.get_amount}"
puts "Jen - 50 USD = #{jen_money.get_amount}"
puts "Kev - 50 EUR = #{kev_money.get_amount}"
puts "Syd still = #{syd_money.get_amount}"

puts "Joe = Jen: #{joe_money == jen_money}"
puts "Kev = Syd: #{kev_money == syd_money}"
puts "Jen = Kev: #{jen_money == kev_money}"
puts "Jen = Syd: #{jen_money == syd_money}"

# p us_dollar
#
# puts us_dollar.get_amount
# puts us_dollar.get_code
#
# puts us_dollar.add_amount(60, "EUR")
#
# puts us_dollar == us_dollar
