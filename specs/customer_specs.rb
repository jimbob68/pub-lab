require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Bob", 1000)
  end

  def test_can_get_customer_name
    assert_equal("Bob", @customer.name)
  end

  def test_can_get_customer_cash_in_wallet
    assert_equal(1000, @customer.wallet)
  end

  def test_can_reduce_cash_in_wallet
    @customer.can_reduce_cash_in_wallet(250)
    assert_equal(750, @customer.wallet)
  end























end
