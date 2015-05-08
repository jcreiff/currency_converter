class CurrencyConverter

  def initialize(rate, code)
    @rate = rate
    @code = code
    @hash = {rate => code}
  end

  def rate
    @rate
  end

  def code
    @code
  end

  def hash
    @hash
  end

end
