class CashRegister

  def initialize
    @total = 0.00
  end

  def total
    return(@total)
  end

  def purchase(price)
    @total += price
    return(@total)
  end

  def pay(amount)
    @total -= amount
    if (@total < 0)
      change = -@total
      @total = 0
      return("Your change is $#{'%.2f' % change}.")
    else
      return("Your new total is $#{"%.2f" % @total}.")
    end
  end
end