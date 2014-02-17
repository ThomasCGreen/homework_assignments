class CashRegister
  def initialize
    @total = 0.00
  end

  def total
    @total
  end

  def purchase(item_cost)
    @total += item_cost
  end

  def pay(tendered_amount)
    @total -= tendered_amount
    if (@total > 0)
      result = "Your new total is $" + ("%.2f" % @total)
    else
      result = "Your change is $" + ("%.2f" % -@total)
      @total = 0.00
    end
    result
  end
end