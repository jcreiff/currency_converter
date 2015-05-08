require './currency.rb'
require './converter.rb'

dollar = CurrencyConverter.new(1, "USD")
euro = CurrencyConverter.new(0.75, "EUR")

puts dollar.hash
puts euro.hash
