require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')

class TestCustomer < Minitest::Test

  def test_can_get_customer_name
    customer = Customer.new("Bob", 1000)
    assert_equal("Bob", customer.name)
  end

  def test_can_get_customer_cash_in_wallet
    customer = Customer.new("Bob", 1000)
    assert_equal(1000, customer.wallet)
  end













end
