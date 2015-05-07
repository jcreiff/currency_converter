class Currency
  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def get_amount
    @amount
  end

  def get_code
    @code
  end

  def add_amount(amount, code)
    @amount += amount
  end

end
