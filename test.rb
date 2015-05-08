require './currency.rb'



# us_dollar = Currency.new(50, "USD")
# euro = Currency.new(75, "EUR")

joe_money = Currency.new("$75006.78975")
puts "Joe: #{joe_money.amount_code}"
jen_money = Currency.new("R75.57", "USD")
puts "Jen: #{jen_money.amount_code}"
kev_money = Currency.new("€50")
puts "Kev: #{kev_money.amount_code}"
syd_money = Currency.new(75)
puts "Syd: #{syd_money.amount_code}"

# our_money = joe_money * 2.7697
# puts "Joe: #{joe_money.amount_code}"
# puts "Jen: #{jen_money.amount_code}"
# puts "Us: #{our_money.amount_code}"
#
# puts joe_money
# puts jen_money
# puts our_money
#puts joe_money + kev_money

# puts kev_money - syd_money
# puts kev_money.amount_code
# puts syd_money.amount_code
# puts jen_money - syd_money
# puts "Joe x 2 = #{joe_money *2}"
# puts "Jen x 2.5 = #{jen_money * 2.5}"
# puts "Kev x -3 = #{kev_money * 3}"
# puts "Syd x 0.557 = #{syd_money *0.557}"

# puts "Joe: #{joe_money.amount}"
# puts "Jen: #{jen_money.amount}"
# puts "Kev: #{kev_money.amount}"
# puts "Syd: #{syd_money.amount}"

# puts joe_money.add_amount(kev_money)
# puts joe_money.add_amount(jen_money)

# puts "Joe = Jen: #{joe_money == jen_money}"
# puts "Kev = Syd: #{kev_money == syd_money}"
#
# joe_money.add_amount(75, "USD")
# jen_money.add_amount(50, "USD")
# kev_money.add_amount(50, "EUR")
# syd_money.add_amount(50, "USD")
#
# puts "Joe + 75 USD = #{joe_money.amount}"
# puts "Jen + 50 USD = #{jen_money.amount}"
# puts "Kev + 50 EUR = #{kev_money.amount}"
# puts "Syd still = #{syd_money.amount}"
#
# puts "Joe = Jen: #{joe_money == jen_money}"
# puts "Kev = Syd: #{kev_money == syd_money}"
# puts "Jen = Kev: #{jen_money == kev_money}"
# puts "Jen = Syd: #{jen_money == syd_money}"
#
# joe_money.subtract_amount(75, "USD")
# jen_money.subtract_amount(50, "USD")
# kev_money.subtract_amount(50, "EUR")
# syd_money.subtract_amount(50, "USD")
#
# puts "Joe - 75 USD = #{joe_money.amount}"
# puts "Jen - 50 USD = #{jen_money.amount}"
# puts "Kev - 50 EUR = #{kev_money.amount}"
# puts "Syd still = #{syd_money.amount}"
#
# puts "Joe = Jen: #{joe_money == jen_money}"
# puts "Kev = Syd: #{kev_money == syd_money}"
# puts "Jen = Kev: #{jen_money == kev_money}"
# puts "Jen = Syd: #{jen_money == syd_money}"

# p us_dollar
#
# puts us_dollar.amount
# puts us_dollar.code
#
# puts us_dollar.add_amount(60, "EUR")
#
# puts us_dollar == us_dollar
