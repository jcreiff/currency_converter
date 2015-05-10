#Currency Converter

This simple Ruby program makes use of classes to aid you in your international travels.
You can create new currency objects by specifying a currency **amount** and currency **code**.
You can also convert your currency object into a new currency object with the equivalent value in a different currency code.

######**As long as you're traveling in the US, the UK, Japan, India, South Africa, or somewhere in the eurozone.*

###Class: Currency

The `Currency` class and all its associated methods live in `currency.rb`. Currency objects are initialized with an amount and a currency code.  Fun fact: you can also initialize with a string that starts with the currency symbol ("$10"), and nothing else.  But don't try to initialize with out a code or a symbol--you'll get an `UnknownCurrencyCodeError` for trying to pass off your nebulous non-currency number.  

#####Test It!
Run `test.rb` to prove that the `Currency` class can handle the following tasks:
* Create a new Currency object with an amount and code
* Assert the equivalence of Currency objects with the same amount and code
* Add and subtract Currency objects with the same code
  * Make sure they have the same code--otherwise you'll see the `DifferentCurrencyCodeError`
* Multiply Currency objects by any Fixnum or Float
  * Don't you wish making money was this easy in real life?
* Assign a currency code based on a symbol passed in with your amount argument

###Class: CurrencyConverter

The `CurrencyConverter` class and its handy `convert` method live in `converter.rb`. The converter is initialized with an hash of currency codes and their corresponding [exchange rates](http://www.xe.com/).  As long as your desired currency's code and exchange rate (relative to the US dollar) exist in the converter's hash, you can find our how much your currency object is worth when converted to another currency.  If you try to convert to or from an unknown currency,  you'll get an `UnknownCurrencyCodeError`

#####Test It!
Run `test_two.rb` to see what the `CurrencyConverter` can do.  It comes pre-loaded with the following currencies:
* US dollar (USD)
* British pound (GBP)
* Japanese yen (JPY)
* South African rand (ZAR)
* Indian rupee (INR)
* the euro (EUR)
