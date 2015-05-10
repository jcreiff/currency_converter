class Currency

  attr_reader :code, :amount, :amount_code

  def initialize(amount = 1, code="")
    code_hash = {"$" => "USD", "€" => "EUR", "£" => "GBP",
                 "¥" => "JPY", "₹" => "INR", "R" => "ZAR"}
    if code_hash.include?amount.to_s[0]
      symbol = amount.to_s[0]
      @code = code_hash[symbol]
      @amount = amount[1..-1].to_f.round(2)
    elsif code.empty?
      raise DifferentCurrencyCodeError, "Must specify currency."
    else
      @amount = amount.to_f.round(2)
      @code = code
    end
    @amount_code = [@amount, @code].join(" ")
  end

  class DifferentCurrencyCodeError < StandardError
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
     raise DifferentCurrencyCodeError, "Cannot combine different currencies."
    else
      new_amount = @amount + other.amount
      return Currency.new(new_amount, @code)
    end
  end

  def - (other)
    if @code != other.code
      raise DifferentCurrencyCodeError, "Cannot combine different currencies."
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
