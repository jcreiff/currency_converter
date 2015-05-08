require './currency.rb'
require './converter.rb'

dollar = Currency.new(1, "USD")
euro = Currency.new(1, "EUR")
yen = Currency.new(1, "JPY")
exchange_rate = CurrencyConverter.new({"USD" => 1, "EUR" => 0.75})

# puts exchange_rate
# puts exchange_rate.conversions
#puts exchange_rate.convert(dollar, euro)

puts exchange_rate.convert(Currency.new(1, "USD"), "USD") == (Currency.new(1, "USD"))
# p new_dollar
# p dollar
