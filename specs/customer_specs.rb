require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../drinks.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Bob", 1000, 21)
  end

  def test_can_get_customer_name
    assert_equal("Bob", @customer.name)
  end

  def test_can_get_customer_cash_in_wallet
    assert_equal(1000, @customer.wallet)
  end

  def test_get_customer_age
    assert_equal(21, @customer.age)
  end

  def test_can_reduce_cash_in_wallet
    @customer.can_reduce_cash_in_wallet(250)
    assert_equal(750, @customer.wallet)
  end

  def test_customer_can_afford_drink
    can_afford_drink = @customer.customer_can_afford_drink(250)
    assert_equal(true, can_afford_drink)
  end

  def test_customer_has_exact_money_for_drink
    can_afford_drink = @customer.customer_can_afford_drink(250)
    assert_equal(true, can_afford_drink)
  end

  def test_customer_does_not_have_enough_money_for_drink
    can_not_afford_drink = @customer.customer_can_not_afford_drink(250)
    assert_equal(false, can_not_afford_drink)
  end



















end
