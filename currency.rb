class Currency
  def initialize(amount, code, compare=true)
    @amount = amount
    @code = code
    @compare = compare
  end

  def get_amount
    @amount
  end

  def get_code
    @code
  end

  def compare(code)
    if @code == code.get_code
      @compare = true
    else
      @compare = false
    end
  end

  def add_amount(amount)
    @amount += amount
  end

end
