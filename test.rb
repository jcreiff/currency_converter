require './currency.rb'

us_dollar = Currency.new(50, "USD")

p us_dollar

puts us_dollar.get_amount
puts us_dollar.get_code
