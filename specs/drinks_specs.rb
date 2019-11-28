require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drinks.rb')

class TestDrink < Minitest::Test

  def setup
    @drink = Drink.new("beer", 250, @alchohol_level)
  end

  def test_can_get_drink_name
    assert_equal("beer", @drink.name)
  end

  def test_can_get_price
    assert_equal(250, @drink.price)
  end

#   def test_customer_old_enough_to_drink
#     assert_equal(21,@customer.age)
#   end
#
end
