class CurrencyConverter

  attr_reader :conversions

  def initialize(hash)
    @conversions = hash
  end

  class UnknownCurrencyCodeError < StandardError
  end

  def convert(currency, other)
    if !@conversions.include?(currency.code) || !@conversions.include?(other)
      raise UnknownCurrencyCodeError, "Cannot convert unknown currencies."
    elsif currency.code == "USD"
      Currency.new(currency.amount * (@conversions[other]), other)
    else
      Currency.new(currency.amount * @conversions[other]/@conversions[currency.code], other)
    end
  end

end
