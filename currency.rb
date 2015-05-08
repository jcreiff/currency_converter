class Currency
  def initialize(amount, code, compare=true)
    @amount = amount
    @code = code
    @amount_code = [amount, code].join(" ")
    @compare = compare
  end

  def get_amount
    @amount_code
  end

  def get_code
    @code
  end

  def ==(other)
    if @amount_code == other.get_amount
      @compare = true
    else
      @compare = false
    end
  end

  def add_amount(amount, code)
   if @code == code
      @amount += amount
    else
      puts "Error!"
    end
  end

end
