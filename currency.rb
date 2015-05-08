class Currency
  def initialize(amount, code)
    @amount = amount
    @code = code
    @amount_code = [amount, code].join(" ")
  end

  class CurrencyCodeError < StandardError
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def amount_code
    @amount_code
  end

  def == (other)
    if @amount_code == other.amount_code
      return true
    else
      return false
    end
  end

  def + (other)
    if @code != other.code
     raise CurrencyCodeError, "Cannot combine different currencies."
    else
      new_amount = @amount + other.amount
      return Currency.new(new_amount, @code)
    end
  end

  def - (other)
    if @code != other.code
      raise CurrencyCodeError, "Cannot combine different currencies."
    else
      new_amount = @amount - other.amount
      return Currency.new(new_amount, @code)
    end
  end

  def * (number)
    new_amount = (@amount * number).round(2)
    return Currency.new(new_amount, @code)
  end

end
