class CurrencyConverter

  attr_reader :conversions

  def initialize(conversions)
    @conversions = conversions
  end

  class UnknownCurrencyCodeError < StandardError
  end

  def convert(currency, other)
    if !@conversions.include?(currency.code) || !@conversions.include?(other)
      raise UnknownCurrencyCodeError, "Cannot convert unknown currencies."
    else
      Currency.new(currency.amount * @conversions[other]/@conversions[currency.code], other)
    end
  end

end
