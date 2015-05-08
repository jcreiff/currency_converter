require './currency.rb'
require './converter.rb'

dollar = CurrencyConverter.new("USD", 1)
euro = CurrencyConverter.new("EUR", 0.75)

puts dollar.hash
puts euro.hash
