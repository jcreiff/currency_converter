require './currency.rb'

# 1. Created with an amount and currency code
dollar = Currency.new(1, "USD")
print "1. "
p dollar

# 2. Equal to another currency object with same amount & code
other_dollar = Currency.new(1, "USD")
print "2. "
puts dollar == other_dollar
#=>true

# 3. Not equal to another currency object with
#    different amount or different code
euro = Currency.new(1, "EUR")
five_dollar = Currency.new(5, "USD")
print "3. "
puts dollar == euro
#=>false
puts dollar == five_dollar
#=>false

# 4. Can add to another currency object with same code
print "4. "
p dollar + five_dollar

# 5. Can subtract from another currency object with same code
print "5. "
p five_dollar - dollar

# 6. Raises DifferentCurrencyCodeError when attempting to add
#    or subtract objects with different currency codes
#    (uncomment one at a time to watch it break)
#print "6. "
#p dollar + euro
#p euro - dollar

# 7. Can multiply by Fixnum or Float and return new object
print "7. "
p euro * 10
p five_dollar * 7.5897

# 8. Can take one argument with symbol and assign code
thousand_yen = Currency.new("¥1000")
print "8. "
p thousand_yen

# 8a. Throws error if given amount with no symbol and no code
#     (uncomment to watch it break)
#twenty_something = Currency.new(20)
