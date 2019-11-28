class Drink

  attr_reader :name, :price, :alcohol_level, :age

  def initialize(name, price, alcohol_level)
    @name = name
    @price = price
    @alchohol_level = 5
    @age = age
  end

  # def can_be_over_alcohol_limit
  #   if customer.alchohol_level > 5.drink
  #     return false
  #   end
  # end

#   def customer_old_enough_to_drink(age, customer)
#     if customer >= 18
#       return true
#     else
#       return false
#     end
#   end
#
end
