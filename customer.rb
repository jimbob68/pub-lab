class Customer

attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def can_reduce_cash_in_wallet(cash)
    return @wallet -= cash
  end

  def customer_can_afford_drink(price_of_drink)
    return @wallet >= price_of_drink
  end

  def customer_can_not_afford_drink(price_of_drink)
    return @wallet > price_of_drink
  end
















end
