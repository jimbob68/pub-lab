class Pub

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
  end

  def can_remove_cash_from_till(cash)
    return @till -= cash
  end

  def can_add_cash_to_till(cash)
    return @till += cash
  end

  def sell_customer_a_drink(customer, drink)
    customer.can_add_cash_to_till(drink.price())
    customer.can_reduce_cash_in_wallet(drink.price())
  end



















end
