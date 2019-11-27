class Customer

attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def can_reduce_cash_in_wallet(cash)
    return @wallet -= cash
  end




















end
