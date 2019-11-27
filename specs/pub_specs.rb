require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')

class TestPub < Minitest::Test

  def setup
    @pub = Pub.new("Red Lion", 10000)
  end

  def test_can_get_pub_name
    assert_equal("Red Lion", @pub.name)
  end

  def test_can_get_balance_of_cash_in_till
    assert_equal(10000, @pub.till)
  end











end
