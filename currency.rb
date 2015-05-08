class Currency
  def initialize(amount, code, compare=true, round=true)
    @amount = amount
    @code = code
    @amount_code = [amount, code].join(" ")
    @compare = compare
    @round = round
  end

  def get_amount
    @amount_code
  end

  def get_code
    @code
  end

  def == (other)
    if @amount_code == other.get_amount
      @compare = true
    else
      @compare = false
    end
  end

  def add_amount(amount, code)
   if @code == code
      @amount += amount
      @amount_code = [@amount, code].join(" ")
    else
      puts "Error!"
    end
  end

  def subtract_amount(amount, code)
   if @code == code
      @amount -= amount
      @amount_code = [@amount, code].join(" ")
    else
      puts "Error!"
    end
  end

  def round()
    @round
  end

  def multiply(number)
    @amount = (@amount * number).round(2)
    @amount_code = [@amount, @code].join(" ")
  end

end
