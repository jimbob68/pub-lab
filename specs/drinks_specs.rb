require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drinks.rb')

class TestDrink < Minitest::Test

  def test_can_get_name
      drink = Drink.new("beer", 250)
      assert_equal("beer", drink.name)
  end

  def test_can_get_price
    drink = Drink.new("beer", 250)
    assert_equal(250, drink.price)
  end











end
