require './currency.rb'

us_dollar = Currency.new(50, "USD")
euro = Currency.new(75, "EUR")
p us_dollar

puts us_dollar.get_amount
puts us_dollar.get_code

puts us_dollar.add_amount(60)
