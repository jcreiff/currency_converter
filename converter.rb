class CurrencyConverter

  def initialize(hash)
    @conversions = hash
  end

  def conversions
    @conversions
  end

  class UnknownCurrencyCodeError < StandardError
  end

  def convert(currency, other)
    if !@conversions.include?(currency.code) || !@conversions.include?(other)
      raise UnknownCurrencyCodeError, "Cannot convert unknown currencies."
    else
      Currency.new(currency.amount * (@conversions[other]), other)
    end
  end

end
