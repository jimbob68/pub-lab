class Pub

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
  end

  def can_remove_cash_from_till(cash)
    return @till -= cash
  end
























end
