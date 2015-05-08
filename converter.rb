class CurrencyConverter

  def initialize(code, rate)
    @code = code
    @rate = rate
    @hash = {code => rate}
  end

  def code
    @code
  end

  def rate
    @rate
  end

  def hash
    @hash
  end

end
