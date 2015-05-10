require './currency.rb'
require './converter.rb'

# 1. Initialized with a hash of currency codes & conversion rates
conversions = CurrencyConverter.new({"USD" => 1, "EUR" => 0.89248,
                                    "JPY" => 119.779, "GBP" => 0.64679,
                                    "INR" => 63.705, "ZAR" => 11.924})
print "1. "
p conversions

# 2. Can take a Currency object and a requested (& identical) currency code
#    and return a Currency object equal to the one passed in
print "2. "
p conversions.convert(Currency.new(1, "USD"), "USD") == Currency.new(1, "USD")

# 3. Can take a Currency object and requested (& different) currency code
#    and return a Currency object of the correct amount in the new currency code
dollar = Currency.new(1, "USD")
euro = Currency.new(1, "EUR")
yen = Currency.new(1, "JPY")
rupee = Currency.new(1, "INR")
pound = Currency.new(1, "GBP")
one_rand = Currency.new(1, "ZAR")
# #rand is already defined in Ruby!
print "3. "
p conversions.convert(dollar, "EUR")
p conversions.convert(dollar, "JPY")

# 4. Can convert Currency in any currency code it knows about to Currency
#    in any other currency code it knows about
print "4. "
p conversions.convert(one_rand, "JPY")
p conversions.convert(euro, "INR")
p conversions.convert(pound, "USD")

# 5. Raises an UnknownCurrencyCodeError when you try to convert
#    from or to a currency code it doesn't know about.
#    (un-comment one at a time to watch it break)
#print "5. "
#p conversions.convert(dollar, "MXN")
#p conversions.convert(Currency.new(1, "MXN"), "USD")
