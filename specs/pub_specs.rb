require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drinks.rb')

class TestPub < Minitest::Test

  def setup
    @pub = Pub.new("Red Lion", 1000)
    # @customer = Customer.new(1000)
  end

  def test_can_get_pub_name
    assert_equal("Red Lion", @pub.name)
  end

  def test_can_get_balance_of_cash_in_till
    assert_equal(1000, @pub.till)
  end

  def test_can_remove_cash_from_till
    @pub.can_remove_cash_from_till(250)
    assert_equal(750, @pub.till)
  end






end
